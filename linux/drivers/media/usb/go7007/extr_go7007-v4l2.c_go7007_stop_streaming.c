
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {scalar_t__ streaming; } ;
struct go7007 {scalar_t__ board_id; int mpeg_video_aspect_ratio; int mpeg_video_bitrate; int mpeg_video_gop_closure; int mpeg_video_gop_size; int spinlock; int vidq_active; int v4l2_dev; int hw_lock; } ;


 scalar_t__ GO7007_BOARDID_ADS_USBAV_709 ;
 int INIT_LIST_HEAD (int *) ;
 int call_all (int *,int ,int ,int ) ;
 int go7007_reset_encoder (struct go7007*) ;
 int go7007_stream_stop (struct go7007*) ;
 int go7007_write_addr (struct go7007*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s_stream ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int v4l2_ctrl_grab (int ,int) ;
 struct go7007* vb2_get_drv_priv (struct vb2_queue*) ;
 int video ;

__attribute__((used)) static void go7007_stop_streaming(struct vb2_queue *q)
{
 struct go7007 *go = vb2_get_drv_priv(q);
 unsigned long flags;

 q->streaming = 0;
 go7007_stream_stop(go);
 mutex_lock(&go->hw_lock);
 go7007_reset_encoder(go);
 mutex_unlock(&go->hw_lock);
 call_all(&go->v4l2_dev, video, s_stream, 0);

 spin_lock_irqsave(&go->spinlock, flags);
 INIT_LIST_HEAD(&go->vidq_active);
 spin_unlock_irqrestore(&go->spinlock, flags);
 v4l2_ctrl_grab(go->mpeg_video_gop_size, 0);
 v4l2_ctrl_grab(go->mpeg_video_gop_closure, 0);
 v4l2_ctrl_grab(go->mpeg_video_bitrate, 0);
 v4l2_ctrl_grab(go->mpeg_video_aspect_ratio, 0);

 if (go->board_id == GO7007_BOARDID_ADS_USBAV_709)
  go7007_write_addr(go, 0x3c82, 0x000d);
}
