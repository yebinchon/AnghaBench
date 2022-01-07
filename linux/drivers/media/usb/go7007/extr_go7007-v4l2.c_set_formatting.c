
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct go7007 {int format; int pali; int gop_size; int ipb; int closed_gop; int repeat_seqhead; int gop_header_enable; int dvd_mode; int bitrate; void* aspect_ratio; int mpeg_video_aspect_ratio; int mpeg_video_rep_seqheader; int mpeg_video_bitrate; int mpeg_video_b_frames; int mpeg_video_gop_closure; int mpeg_video_gop_size; scalar_t__ seq_header_enable; } ;


 void* GO7007_RATIO_16_9 ;
 void* GO7007_RATIO_1_1 ;
 void* GO7007_RATIO_4_3 ;



 int V4L2_PIX_FMT_MJPEG ;



 int v4l2_ctrl_g_ctrl (int ) ;

__attribute__((used)) static void set_formatting(struct go7007 *go)
{
 if (go->format == V4L2_PIX_FMT_MJPEG) {
  go->pali = 0;
  go->aspect_ratio = GO7007_RATIO_1_1;
  go->gop_size = 0;
  go->ipb = 0;
  go->closed_gop = 0;
  go->repeat_seqhead = 0;
  go->seq_header_enable = 0;
  go->gop_header_enable = 0;
  go->dvd_mode = 0;
  return;
 }

 switch (go->format) {
 case 130:
  go->pali = 0;
  break;
 default:
 case 129:
  go->pali = 0x48;
  break;
 case 128:
  go->pali = 0xf5;
  break;
 }
 go->gop_size = v4l2_ctrl_g_ctrl(go->mpeg_video_gop_size);
 go->closed_gop = v4l2_ctrl_g_ctrl(go->mpeg_video_gop_closure);
 go->ipb = v4l2_ctrl_g_ctrl(go->mpeg_video_b_frames) != 0;
 go->bitrate = v4l2_ctrl_g_ctrl(go->mpeg_video_bitrate);
 go->repeat_seqhead = v4l2_ctrl_g_ctrl(go->mpeg_video_rep_seqheader);
 go->gop_header_enable = 1;
 go->dvd_mode = 0;
 if (go->format == 129)
  go->dvd_mode =
   go->bitrate == 9800000 &&
   go->gop_size == 15 &&
   go->ipb == 0 &&
   go->repeat_seqhead == 1 &&
   go->closed_gop;

 switch (v4l2_ctrl_g_ctrl(go->mpeg_video_aspect_ratio)) {
 default:
 case 132:
  go->aspect_ratio = GO7007_RATIO_1_1;
  break;
 case 131:
  go->aspect_ratio = GO7007_RATIO_4_3;
  break;
 case 133:
  go->aspect_ratio = GO7007_RATIO_16_9;
  break;
 }
}
