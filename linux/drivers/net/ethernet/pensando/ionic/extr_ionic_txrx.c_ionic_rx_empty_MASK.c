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
struct ionic_rxq_desc {int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;
struct ionic_queue {struct ionic_desc_info* head; struct ionic_desc_info* tail; TYPE_2__* lif; } ;
struct ionic_desc_info {int /*<<< orphan*/ * cb_arg; struct ionic_rxq_desc* desc; struct ionic_desc_info* next; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ionic; } ;
struct TYPE_3__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct ionic_queue *q)
{
	struct device *dev = q->lif->ionic->dev;
	struct ionic_desc_info *cur;
	struct ionic_rxq_desc *desc;

	for (cur = q->tail; cur != q->head; cur = cur->next) {
		desc = cur->desc;
		FUNC1(dev, FUNC3(desc->addr),
				 FUNC2(desc->len), DMA_FROM_DEVICE);
		FUNC0(cur->cb_arg);
		cur->cb_arg = NULL;
	}
}