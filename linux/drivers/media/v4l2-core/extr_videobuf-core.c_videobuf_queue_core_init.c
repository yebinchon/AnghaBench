
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue_ops {int buf_release; int buf_queue; int buf_prepare; int buf_setup; } ;
struct videobuf_queue {int type; int field; unsigned int msize; int stream; int wait; int vb_lock; struct videobuf_qtype_ops* int_ops; struct videobuf_queue_ops const* ops; void* priv_data; struct device* dev; struct mutex* ext_lock; int * irqlock; } ;
struct videobuf_qtype_ops {int dummy; } ;
struct mutex {int dummy; } ;
struct device {int dummy; } ;
typedef int spinlock_t ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int BUG_ON (int) ;
 int INIT_LIST_HEAD (int *) ;
 int init_waitqueue_head (int *) ;
 int memset (struct videobuf_queue*,int ,int) ;
 int mutex_init (int *) ;

void videobuf_queue_core_init(struct videobuf_queue *q,
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
 BUG_ON(!q);
 memset(q, 0, sizeof(*q));
 q->irqlock = irqlock;
 q->ext_lock = ext_lock;
 q->dev = dev;
 q->type = type;
 q->field = field;
 q->msize = msize;
 q->ops = ops;
 q->priv_data = priv;
 q->int_ops = int_ops;


 BUG_ON(!q->ops->buf_setup);
 BUG_ON(!q->ops->buf_prepare);
 BUG_ON(!q->ops->buf_queue);
 BUG_ON(!q->ops->buf_release);


 BUG_ON(!irqlock);


 BUG_ON(!q->int_ops);

 mutex_init(&q->vb_lock);
 init_waitqueue_head(&q->wait);
 INIT_LIST_HEAD(&q->stream);
}
