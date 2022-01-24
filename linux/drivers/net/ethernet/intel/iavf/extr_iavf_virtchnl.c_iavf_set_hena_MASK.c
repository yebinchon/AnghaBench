#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vrh ;
typedef  int /*<<< orphan*/  u8 ;
struct virtchnl_rss_hena {int /*<<< orphan*/  hena; } ;
struct iavf_adapter {scalar_t__ current_op; int /*<<< orphan*/  aq_required; int /*<<< orphan*/  hena; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IAVF_FLAG_AQ_SET_HENA ; 
 scalar_t__ VIRTCHNL_OP_SET_RSS_HENA ; 
 scalar_t__ VIRTCHNL_OP_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct iavf_adapter*,scalar_t__,int /*<<< orphan*/ *,int) ; 

void FUNC2(struct iavf_adapter *adapter)
{
	struct virtchnl_rss_hena vrh;

	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
		/* bail because we already have a command pending */
		FUNC0(&adapter->pdev->dev, "Cannot set RSS hash enable, command %d pending\n",
			adapter->current_op);
		return;
	}
	vrh.hena = adapter->hena;
	adapter->current_op = VIRTCHNL_OP_SET_RSS_HENA;
	adapter->aq_required &= ~IAVF_FLAG_AQ_SET_HENA;
	FUNC1(adapter, VIRTCHNL_OP_SET_RSS_HENA, (u8 *)&vrh,
			 sizeof(vrh));
}