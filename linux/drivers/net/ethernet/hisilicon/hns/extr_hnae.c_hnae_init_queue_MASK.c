#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int flags; } ;
struct hnae_queue {TYPE_2__ tx_ring; TYPE_2__ rx_ring; struct hnae_handle* handle; struct hnae_ae_dev* dev; } ;
struct hnae_handle {int dummy; } ;
struct hnae_ae_dev {TYPE_1__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* init_queue ) (struct hnae_queue*) ;} ;

/* Variables and functions */
 int RINGF_DIR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (struct hnae_queue*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hnae_queue*) ; 

__attribute__((used)) static int FUNC3(struct hnae_handle *h, struct hnae_queue *q,
			   struct hnae_ae_dev *dev)
{
	int ret;

	q->dev = dev;
	q->handle = h;

	ret = FUNC1(q, &q->tx_ring, q->tx_ring.flags | RINGF_DIR);
	if (ret)
		goto out;

	ret = FUNC1(q, &q->rx_ring, q->rx_ring.flags & ~RINGF_DIR);
	if (ret)
		goto out_with_tx_ring;

	if (dev->ops->init_queue)
		dev->ops->init_queue(q);

	return 0;

out_with_tx_ring:
	FUNC0(&q->tx_ring);
out:
	return ret;
}