
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dma; } ;
struct aspeed_video {int jpeg_quality; int frame_rate; TYPE_1__ jpeg; scalar_t__ yuv420; } ;


 int FIELD_PREP (int ,int) ;
 int VE_COMP_CTRL ;
 int VE_COMP_CTRL_DCT_CHR ;
 int VE_COMP_CTRL_DCT_LUM ;
 int VE_COMP_CTRL_RSVD ;
 int VE_COMP_OFFSET ;
 int VE_COMP_PROC_OFFSET ;
 int VE_CTRL ;
 int VE_CTRL_AUTO_OR_CURSOR ;
 int VE_CTRL_FRC ;
 int VE_INTERRUPT_CTRL ;
 int VE_INTERRUPT_STATUS ;
 int VE_JPEG_ADDR ;
 int VE_MODE_DETECT ;
 int VE_PROTECTION_KEY ;
 int VE_PROTECTION_KEY_UNLOCK ;
 int VE_SCALING_FACTOR ;
 int VE_SCALING_FILTER0 ;
 int VE_SCALING_FILTER1 ;
 int VE_SCALING_FILTER2 ;
 int VE_SCALING_FILTER3 ;
 int VE_SEQ_CTRL ;
 int VE_SEQ_CTRL_JPEG_MODE ;
 int VE_SEQ_CTRL_YUV420 ;
 int aspeed_video_write (struct aspeed_video*,int ,int) ;

__attribute__((used)) static void aspeed_video_init_regs(struct aspeed_video *video)
{
 u32 comp_ctrl = VE_COMP_CTRL_RSVD |
  FIELD_PREP(VE_COMP_CTRL_DCT_LUM, video->jpeg_quality) |
  FIELD_PREP(VE_COMP_CTRL_DCT_CHR, video->jpeg_quality | 0x10);
 u32 ctrl = VE_CTRL_AUTO_OR_CURSOR;
 u32 seq_ctrl = VE_SEQ_CTRL_JPEG_MODE;

 if (video->frame_rate)
  ctrl |= FIELD_PREP(VE_CTRL_FRC, video->frame_rate);

 if (video->yuv420)
  seq_ctrl |= VE_SEQ_CTRL_YUV420;


 aspeed_video_write(video, VE_PROTECTION_KEY, VE_PROTECTION_KEY_UNLOCK);


 aspeed_video_write(video, VE_INTERRUPT_CTRL, 0);
 aspeed_video_write(video, VE_INTERRUPT_STATUS, 0xffffffff);


 aspeed_video_write(video, VE_COMP_PROC_OFFSET, 0);
 aspeed_video_write(video, VE_COMP_OFFSET, 0);

 aspeed_video_write(video, VE_JPEG_ADDR, video->jpeg.dma);


 aspeed_video_write(video, VE_SEQ_CTRL, seq_ctrl);
 aspeed_video_write(video, VE_CTRL, ctrl);
 aspeed_video_write(video, VE_COMP_CTRL, comp_ctrl);


 aspeed_video_write(video, VE_SCALING_FACTOR, 0x10001000);
 aspeed_video_write(video, VE_SCALING_FILTER0, 0x00200000);
 aspeed_video_write(video, VE_SCALING_FILTER1, 0x00200000);
 aspeed_video_write(video, VE_SCALING_FILTER2, 0x00200000);
 aspeed_video_write(video, VE_SCALING_FILTER3, 0x00200000);


 aspeed_video_write(video, VE_MODE_DETECT, 0x22666500);
}
