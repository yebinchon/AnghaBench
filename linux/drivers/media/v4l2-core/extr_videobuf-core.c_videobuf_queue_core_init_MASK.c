#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct videobuf_queue_ops {int /*<<< orphan*/  buf_release; int /*<<< orphan*/  buf_queue; int /*<<< orphan*/  buf_prepare; int /*<<< orphan*/  buf_setup; } ;
struct videobuf_queue {int type; int field; unsigned int msize; int /*<<< orphan*/  stream; int /*<<< orphan*/  wait; int /*<<< orphan*/  vb_lock; struct videobuf_qtype_ops* int_ops; struct videobuf_queue_ops const* ops; void* priv_data; struct device* dev; struct mutex* ext_lock; int /*<<< orphan*/ * irqlock; } ;
struct videobuf_qtype_ops {int dummy; } ;
struct mutex {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct videobuf_queue*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct videobuf_queue *q,
			 const struct videobuf_queue_ops *ops,
			 struct device *dev,
			 spinlock_t *irqlock,
			 enum v4l2_buf_type type,
			 enum v4l2_field field,
			 unsigned int msize,
			 void *priv,
			 struct videobuf_qtype_ops *int_ops,
			 struct mutex *ext_lock)
{
	FUNC0(!q);
	FUNC3(q, 0, sizeof(*q));
	q->irqlock   = irqlock;
	q->ext_lock  = ext_lock;
	q->dev       = dev;
	q->type      = type;
	q->field     = field;
	q->msize     = msize;
	q->ops       = ops;
	q->priv_data = priv;
	q->int_ops   = int_ops;

	/* All buffer operations are mandatory */
	FUNC0(!q->ops->buf_setup);
	FUNC0(!q->ops->buf_prepare);
	FUNC0(!q->ops->buf_queue);
	FUNC0(!q->ops->buf_release);

	/* Lock is mandatory for queue_cancel to work */
	FUNC0(!irqlock);

	/* Having implementations for abstract methods are mandatory */
	FUNC0(!q->int_ops);

	FUNC4(&q->vb_lock);
	FUNC2(&q->wait);
	FUNC1(&q->stream);
}