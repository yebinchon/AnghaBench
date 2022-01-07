
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct aspeed_video {int res_work; int flags; int dev; } ;


 int VB2_BUF_STATE_ERROR ;
 int VIDEO_FRAME_INPRG ;
 int VIDEO_RES_CHANGE ;
 int aspeed_video_bufs_done (struct aspeed_video*,int ) ;
 int aspeed_video_off (struct aspeed_video*) ;
 int clear_bit (int ,int *) ;
 int dev_dbg (int ,char*) ;
 int schedule_delayed_work (int *,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void aspeed_video_irq_res_change(struct aspeed_video *video, ulong delay)
{
 dev_dbg(video->dev, "Resolution changed; resetting\n");

 set_bit(VIDEO_RES_CHANGE, &video->flags);
 clear_bit(VIDEO_FRAME_INPRG, &video->flags);

 aspeed_video_off(video);
 aspeed_video_bufs_done(video, VB2_BUF_STATE_ERROR);

 schedule_delayed_work(&video->res_work, delay);
}
