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
struct hnae_handle {int q_num; int /*<<< orphan*/  node; struct hnae_ae_dev* dev; int /*<<< orphan*/ * qs; } ;
struct hnae_ae_dev {int /*<<< orphan*/  cls_dev; int /*<<< orphan*/  owner; TYPE_1__* ops; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* put_handle ) (struct hnae_handle*) ;int /*<<< orphan*/  (* reset ) (struct hnae_handle*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hnae_handle*) ; 
 int /*<<< orphan*/  FUNC5 (struct hnae_handle*) ; 

void FUNC6(struct hnae_handle *h)
{
	struct hnae_ae_dev *dev = h->dev;
	int i;

	for (i = 0; i < h->q_num; i++)
		FUNC0(h->qs[i]);

	if (h->dev->ops->reset)
		h->dev->ops->reset(h);

	FUNC1(&dev->lock, &h->node);

	if (dev->ops->put_handle)
		dev->ops->put_handle(h);

	FUNC2(dev->owner);

	FUNC3(&dev->cls_dev);
}