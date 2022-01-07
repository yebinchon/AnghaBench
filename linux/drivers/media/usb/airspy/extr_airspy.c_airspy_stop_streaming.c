
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct airspy {int v4l2_lock; int flags; int dev; } ;


 int CMD_RECEIVER_MODE ;
 int POWER_ON ;
 int airspy_cleanup_queued_bufs (struct airspy*) ;
 int airspy_ctrl_msg (struct airspy*,int ,int ,int ,int *,int ) ;
 int airspy_free_stream_bufs (struct airspy*) ;
 int airspy_free_urbs (struct airspy*) ;
 int airspy_kill_urbs (struct airspy*) ;
 int clear_bit (int ,int *) ;
 int dev_dbg (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct airspy* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static void airspy_stop_streaming(struct vb2_queue *vq)
{
 struct airspy *s = vb2_get_drv_priv(vq);

 dev_dbg(s->dev, "\n");

 mutex_lock(&s->v4l2_lock);


 airspy_ctrl_msg(s, CMD_RECEIVER_MODE, 0, 0, ((void*)0), 0);

 airspy_kill_urbs(s);
 airspy_free_urbs(s);
 airspy_free_stream_bufs(s);

 airspy_cleanup_queued_bufs(s);

 clear_bit(POWER_ON, &s->flags);

 mutex_unlock(&s->v4l2_lock);
}
