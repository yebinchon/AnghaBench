#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_9__ {scalar_t__ mbps; } ;
struct aq_nic_s {int /*<<< orphan*/  flags; int /*<<< orphan*/  ndev; TYPE_3__ link_status; TYPE_4__* aq_hw; TYPE_2__* aq_hw_ops; TYPE_1__* aq_fw_ops; } ;
struct TYPE_10__ {TYPE_3__ aq_link_status; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* hw_set_fc ) (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {int (* update_link_status ) (TYPE_4__*) ;int /*<<< orphan*/  (* get_flow_control ) (TYPE_4__*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AQ_CFG_DRV_NAME ; 
 int /*<<< orphan*/  AQ_NIC_FLAG_STARTED ; 
 int /*<<< orphan*/  AQ_NIC_LINK_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct aq_nic_s*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct aq_nic_s *self)
{
	int err = self->aq_fw_ops->update_link_status(self->aq_hw);
	u32 fc = 0;

	if (err)
		return err;

	if (self->link_status.mbps != self->aq_hw->aq_link_status.mbps) {
		FUNC8("%s: link change old %d new %d\n",
			AQ_CFG_DRV_NAME, self->link_status.mbps,
			self->aq_hw->aq_link_status.mbps);
		FUNC0(self);

		/* Driver has to update flow control settings on RX block
		 * on any link event.
		 * We should query FW whether it negotiated FC.
		 */
		if (self->aq_fw_ops->get_flow_control)
			self->aq_fw_ops->get_flow_control(self->aq_hw, &fc);
		if (self->aq_hw_ops->hw_set_fc)
			self->aq_hw_ops->hw_set_fc(self->aq_hw, fc, 0);
	}

	self->link_status = self->aq_hw->aq_link_status;
	if (!FUNC4(self->ndev) && self->link_status.mbps) {
		FUNC2(&self->flags,
				 AQ_NIC_FLAG_STARTED);
		FUNC1(&self->flags,
				   AQ_NIC_LINK_DOWN);
		FUNC5(self->ndev);
		FUNC7(self->ndev);
	}
	if (FUNC4(self->ndev) && !self->link_status.mbps) {
		FUNC3(self->ndev);
		FUNC6(self->ndev);
		FUNC2(&self->flags, AQ_NIC_LINK_DOWN);
	}
	return 0;
}