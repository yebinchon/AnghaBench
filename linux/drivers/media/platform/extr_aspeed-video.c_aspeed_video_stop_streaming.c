
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct aspeed_video {int dev; int flags; int wait; } ;


 int STOP_TIMEOUT ;
 int VB2_BUF_STATE_ERROR ;
 int VIDEO_FRAME_INPRG ;
 int VIDEO_STREAMING ;
 int aspeed_video_bufs_done (struct aspeed_video*,int ) ;
 int aspeed_video_get_resolution (struct aspeed_video*) ;
 int aspeed_video_init_regs (struct aspeed_video*) ;
 int aspeed_video_off (struct aspeed_video*) ;
 int aspeed_video_on (struct aspeed_video*) ;
 int clear_bit (int ,int *) ;
 int dev_dbg (int ,char*) ;
 int test_bit (int ,int *) ;
 struct aspeed_video* vb2_get_drv_priv (struct vb2_queue*) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static void aspeed_video_stop_streaming(struct vb2_queue *q)
{
 int rc;
 struct aspeed_video *video = vb2_get_drv_priv(q);

 clear_bit(VIDEO_STREAMING, &video->flags);

 rc = wait_event_timeout(video->wait,
    !test_bit(VIDEO_FRAME_INPRG, &video->flags),
    STOP_TIMEOUT);
 if (!rc) {
  dev_dbg(video->dev, "Timed out when stopping streaming\n");





  aspeed_video_off(video);
  aspeed_video_on(video);

  aspeed_video_init_regs(video);

  aspeed_video_get_resolution(video);
 }

 aspeed_video_bufs_done(video, VB2_BUF_STATE_ERROR);
}
