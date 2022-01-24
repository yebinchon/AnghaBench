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
struct aq_vec_s {int dummy; } ;
struct TYPE_8__ {int link_irq_vec; scalar_t__ is_polling; } ;
struct TYPE_7__ {int /*<<< orphan*/  count; int /*<<< orphan*/  ar; } ;
struct aq_nic_s {unsigned int aq_vecs; int msix_entry_mask; TYPE_4__* ndev; int /*<<< orphan*/  aq_hw; TYPE_3__* aq_hw_ops; TYPE_2__ aq_nic_cfg; int /*<<< orphan*/  pdev; struct aq_vec_s** aq_vec; int /*<<< orphan*/  polling_timer; int /*<<< orphan*/  service_timer; int /*<<< orphan*/  service_task; int /*<<< orphan*/  packet_filter; TYPE_1__ mc_list; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int (* hw_multicast_list_set ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int (* hw_packet_filter_set ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int (* hw_start ) (int /*<<< orphan*/ ) ;int (* hw_irq_enable ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AQ_CFG_IRQ_MASK ; 
 scalar_t__ AQ_CFG_POLLING_TIMER_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 int /*<<< orphan*/  aq_linkstate_threaded_isr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  aq_nic_service_task ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct aq_nic_s*) ; 
 int FUNC4 (struct aq_nic_s*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aq_vec_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct aq_vec_s*) ; 
 int /*<<< orphan*/  aq_vec_isr ; 
 int FUNC6 (struct aq_vec_s*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC8 (TYPE_4__*,unsigned int) ; 
 int FUNC9 (TYPE_4__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct aq_nic_s*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *),int /*<<< orphan*/ ) ; 

int FUNC18(struct aq_nic_s *self)
{
	struct aq_vec_s *aq_vec = NULL;
	int err = 0;
	unsigned int i = 0U;

	err = self->aq_hw_ops->hw_multicast_list_set(self->aq_hw,
						     self->mc_list.ar,
						     self->mc_list.count);
	if (err < 0)
		goto err_exit;

	err = self->aq_hw_ops->hw_packet_filter_set(self->aq_hw,
						    self->packet_filter);
	if (err < 0)
		goto err_exit;

	for (i = 0U, aq_vec = self->aq_vec[0];
		self->aq_vecs > i; ++i, aq_vec = self->aq_vec[i]) {
		err = FUNC6(aq_vec);
		if (err < 0)
			goto err_exit;
	}

	err = self->aq_hw_ops->hw_start(self->aq_hw);
	if (err < 0)
		goto err_exit;

	err = FUNC3(self);
	if (err)
		goto err_exit;

	FUNC0(&self->service_task, aq_nic_service_task);

	FUNC17(&self->service_timer, aq_nic_service_timer_cb, 0);
	FUNC2(&self->service_timer);

	if (self->aq_nic_cfg.is_polling) {
		FUNC17(&self->polling_timer, aq_nic_polling_timer_cb, 0);
		FUNC7(&self->polling_timer, jiffies +
			  AQ_CFG_POLLING_TIMER_INTERVAL);
	} else {
		for (i = 0U, aq_vec = self->aq_vec[0];
			self->aq_vecs > i; ++i, aq_vec = self->aq_vec[i]) {
			err = FUNC4(self, i, self->ndev->name,
						    aq_vec_isr, aq_vec,
						    FUNC5(aq_vec));
			if (err < 0)
				goto err_exit;
		}

		if (self->aq_nic_cfg.link_irq_vec) {
			int irqvec = FUNC11(self->pdev,
						   self->aq_nic_cfg.link_irq_vec);
			err = FUNC12(irqvec, NULL,
						   aq_linkstate_threaded_isr,
						   IRQF_SHARED | IRQF_ONESHOT,
						   self->ndev->name, self);
			if (err < 0)
				goto err_exit;
			self->msix_entry_mask |= (1 << self->aq_nic_cfg.link_irq_vec);
		}

		err = self->aq_hw_ops->hw_irq_enable(self->aq_hw,
						     AQ_CFG_IRQ_MASK);
		if (err < 0)
			goto err_exit;
	}

	err = FUNC9(self->ndev, self->aq_vecs);
	if (err < 0)
		goto err_exit;

	err = FUNC8(self->ndev, self->aq_vecs);
	if (err < 0)
		goto err_exit;

	FUNC10(self->ndev);

err_exit:
	return err;
}