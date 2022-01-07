
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int streaming; } ;
struct go7007 {scalar_t__ board_id; int mpeg_video_aspect_ratio; int mpeg_video_bitrate; int mpeg_video_gop_closure; int mpeg_video_gop_size; int v4l2_dev; int hw_lock; scalar_t__ modet_event_status; int * active_buf; scalar_t__ next_seq; } ;


 int EIO ;
 scalar_t__ GO7007_BOARDID_ADS_USBAV_709 ;
 int call_all (int *,int ,int ,int) ;
 scalar_t__ go7007_start_encoder (struct go7007*) ;
 int go7007_write_addr (struct go7007*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s_stream ;
 int set_formatting (struct go7007*) ;
 int v4l2_ctrl_grab (int ,int) ;
 struct go7007* vb2_get_drv_priv (struct vb2_queue*) ;
 int video ;

__attribute__((used)) static int go7007_start_streaming(struct vb2_queue *q, unsigned int count)
{
 struct go7007 *go = vb2_get_drv_priv(q);
 int ret;

 set_formatting(go);
 mutex_lock(&go->hw_lock);
 go->next_seq = 0;
 go->active_buf = ((void*)0);
 go->modet_event_status = 0;
 q->streaming = 1;
 if (go7007_start_encoder(go) < 0)
  ret = -EIO;
 else
  ret = 0;
 mutex_unlock(&go->hw_lock);
 if (ret) {
  q->streaming = 0;
  return ret;
 }
 call_all(&go->v4l2_dev, video, s_stream, 1);
 v4l2_ctrl_grab(go->mpeg_video_gop_size, 1);
 v4l2_ctrl_grab(go->mpeg_video_gop_closure, 1);
 v4l2_ctrl_grab(go->mpeg_video_bitrate, 1);
 v4l2_ctrl_grab(go->mpeg_video_aspect_ratio, 1);

 if (go->board_id == GO7007_BOARDID_ADS_USBAV_709)
  go7007_write_addr(go, 0x3c82, 0x0005);
 return ret;
}
