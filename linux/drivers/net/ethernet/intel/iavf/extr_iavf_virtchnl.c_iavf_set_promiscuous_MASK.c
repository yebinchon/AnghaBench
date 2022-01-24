#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vpi ;
typedef  int /*<<< orphan*/  u8 ;
struct virtchnl_promisc_info {int flags; int /*<<< orphan*/  vsi_id; } ;
struct iavf_adapter {scalar_t__ current_op; int flags; int aq_required; TYPE_2__* vsi_res; TYPE_1__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  vsi_id; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FLAG_VF_MULTICAST_PROMISC ; 
 int FLAG_VF_UNICAST_PROMISC ; 
 int IAVF_FLAG_ALLMULTI_ON ; 
 int IAVF_FLAG_AQ_RELEASE_ALLMULTI ; 
 int IAVF_FLAG_AQ_RELEASE_PROMISC ; 
 int IAVF_FLAG_AQ_REQUEST_ALLMULTI ; 
 int IAVF_FLAG_AQ_REQUEST_PROMISC ; 
 int IAVF_FLAG_PROMISC_ON ; 
 scalar_t__ VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE ; 
 scalar_t__ VIRTCHNL_OP_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct iavf_adapter*,scalar_t__,int /*<<< orphan*/ *,int) ; 

void FUNC3(struct iavf_adapter *adapter, int flags)
{
	struct virtchnl_promisc_info vpi;
	int promisc_all;

	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
		/* bail because we already have a command pending */
		FUNC0(&adapter->pdev->dev, "Cannot set promiscuous mode, command %d pending\n",
			adapter->current_op);
		return;
	}

	promisc_all = FLAG_VF_UNICAST_PROMISC |
		      FLAG_VF_MULTICAST_PROMISC;
	if ((flags & promisc_all) == promisc_all) {
		adapter->flags |= IAVF_FLAG_PROMISC_ON;
		adapter->aq_required &= ~IAVF_FLAG_AQ_REQUEST_PROMISC;
		FUNC1(&adapter->pdev->dev, "Entering promiscuous mode\n");
	}

	if (flags & FLAG_VF_MULTICAST_PROMISC) {
		adapter->flags |= IAVF_FLAG_ALLMULTI_ON;
		adapter->aq_required &= ~IAVF_FLAG_AQ_REQUEST_ALLMULTI;
		FUNC1(&adapter->pdev->dev, "Entering multicast promiscuous mode\n");
	}

	if (!flags) {
		adapter->flags &= ~(IAVF_FLAG_PROMISC_ON |
				    IAVF_FLAG_ALLMULTI_ON);
		adapter->aq_required &= ~(IAVF_FLAG_AQ_RELEASE_PROMISC |
					  IAVF_FLAG_AQ_RELEASE_ALLMULTI);
		FUNC1(&adapter->pdev->dev, "Leaving promiscuous mode\n");
	}

	adapter->current_op = VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE;
	vpi.vsi_id = adapter->vsi_res->vsi_id;
	vpi.flags = flags;
	FUNC2(adapter, VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE,
			 (u8 *)&vpi, sizeof(vpi));
}