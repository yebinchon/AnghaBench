#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct virtchnl_tc_info {int num_tc; TYPE_2__* list; } ;
struct TYPE_8__ {int /*<<< orphan*/  state; TYPE_3__* ch_info; } ;
struct iavf_adapter {scalar_t__ current_op; int num_tc; int /*<<< orphan*/  aq_required; int /*<<< orphan*/  flags; TYPE_4__ ch_config; TYPE_1__* pdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  max_tx_rate; int /*<<< orphan*/  offset; int /*<<< orphan*/  count; } ;
struct TYPE_6__ {int /*<<< orphan*/  max_tx_rate; scalar_t__ pad; int /*<<< orphan*/  offset; int /*<<< orphan*/  count; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IAVF_FLAG_AQ_ENABLE_CHANNELS ; 
 int /*<<< orphan*/  IAVF_FLAG_REINIT_ITR_NEEDED ; 
 scalar_t__ VIRTCHNL_OP_ENABLE_CHANNELS ; 
 scalar_t__ VIRTCHNL_OP_UNKNOWN ; 
 int /*<<< orphan*/  __IAVF_TC_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct iavf_adapter*,scalar_t__,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct virtchnl_tc_info*) ; 
 struct virtchnl_tc_info* FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list ; 
 size_t FUNC4 (struct virtchnl_tc_info*,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct iavf_adapter *adapter)
{
	struct virtchnl_tc_info *vti = NULL;
	size_t len;
	int i;

	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
		/* bail because we already have a command pending */
		FUNC0(&adapter->pdev->dev, "Cannot configure mqprio, command %d pending\n",
			adapter->current_op);
		return;
	}

	len = FUNC4(vti, list, adapter->num_tc - 1);
	vti = FUNC3(len, GFP_KERNEL);
	if (!vti)
		return;
	vti->num_tc = adapter->num_tc;
	for (i = 0; i < vti->num_tc; i++) {
		vti->list[i].count = adapter->ch_config.ch_info[i].count;
		vti->list[i].offset = adapter->ch_config.ch_info[i].offset;
		vti->list[i].pad = 0;
		vti->list[i].max_tx_rate =
				adapter->ch_config.ch_info[i].max_tx_rate;
	}

	adapter->ch_config.state = __IAVF_TC_RUNNING;
	adapter->flags |= IAVF_FLAG_REINIT_ITR_NEEDED;
	adapter->current_op = VIRTCHNL_OP_ENABLE_CHANNELS;
	adapter->aq_required &= ~IAVF_FLAG_AQ_ENABLE_CHANNELS;
	FUNC1(adapter, VIRTCHNL_OP_ENABLE_CHANNELS, (u8 *)vti, len);
	FUNC2(vti);
}