
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct aspeed_video {int flags; scalar_t__ sequence; } ;


 int VB2_BUF_STATE_QUEUED ;
 int VIDEO_STREAMING ;
 int aspeed_video_bufs_done (struct aspeed_video*,int ) ;
 int aspeed_video_start_frame (struct aspeed_video*) ;
 int set_bit (int ,int *) ;
 struct aspeed_video* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int aspeed_video_start_streaming(struct vb2_queue *q,
     unsigned int count)
{
 int rc;
 struct aspeed_video *video = vb2_get_drv_priv(q);

 video->sequence = 0;

 rc = aspeed_video_start_frame(video);
 if (rc) {
  aspeed_video_bufs_done(video, VB2_BUF_STATE_QUEUED);
  return rc;
 }

 set_bit(VIDEO_STREAMING, &video->flags);
 return 0;
}
