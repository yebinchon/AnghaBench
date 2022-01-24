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
struct net_device {int dummy; } ;
struct iavf_adapter {int num_active_queues; int num_req_queues; TYPE_2__* pdev; scalar_t__ num_tc; TYPE_1__* vf_res; } ;
struct ethtool_channels {int combined_count; scalar_t__ other_count; scalar_t__ tx_count; scalar_t__ rx_count; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int vf_cap_flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int IAVF_MAX_REQ_QUEUES ; 
 scalar_t__ NONQ_VECS ; 
 int VIRTCHNL_VF_OFFLOAD_ADQ ; 
 int VIRTCHNL_VF_OFFLOAD_REQ_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct iavf_adapter*,int) ; 
 struct iavf_adapter* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev,
			     struct ethtool_channels *ch)
{
	struct iavf_adapter *adapter = FUNC2(netdev);
	int num_req = ch->combined_count;

	if (num_req != adapter->num_active_queues &&
	    !(adapter->vf_res->vf_cap_flags &
	      VIRTCHNL_VF_OFFLOAD_REQ_QUEUES)) {
		FUNC0(&adapter->pdev->dev, "PF is not capable of queue negotiation.\n");
		return -EINVAL;
	}

	if ((adapter->vf_res->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_ADQ) &&
	    adapter->num_tc) {
		FUNC0(&adapter->pdev->dev, "Cannot set channels since ADq is enabled.\n");
		return -EINVAL;
	}

	/* All of these should have already been checked by ethtool before this
	 * even gets to us, but just to be sure.
	 */
	if (num_req <= 0 || num_req > IAVF_MAX_REQ_QUEUES)
		return -EINVAL;

	if (ch->rx_count || ch->tx_count || ch->other_count != NONQ_VECS)
		return -EINVAL;

	adapter->num_req_queues = num_req;
	return FUNC1(adapter, num_req);
}