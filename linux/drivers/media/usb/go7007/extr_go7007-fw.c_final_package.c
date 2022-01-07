
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct go7007 {int height; int width; int encoder_v_offset; int encoder_h_offset; int gop_size; int ipb; int format; int dvd_mode; int modet_enable; int closed_gop; scalar_t__ interlace_coding; TYPE_1__* board_info; int fps_scale; int encoder_h_halve; int encoder_v_halve; int encoder_subsample; } ;
typedef int __le16 ;
struct TYPE_2__ {int sensor_flags; } ;


 int GO7007_SENSOR_CONFIG_MASK ;
 int GO7007_SENSOR_TV ;
 int V4L2_PIX_FMT_H263 ;
 int V4L2_PIX_FMT_MJPEG ;
 int V4L2_PIX_FMT_MPEG1 ;
 int V4L2_PIX_FMT_MPEG2 ;
 int V4L2_PIX_FMT_MPEG4 ;
 int copy_packages (int *,int*,int,int) ;

__attribute__((used)) static int final_package(struct go7007 *go, __le16 *code, int space)
{
 int rows = go->interlace_coding ? go->height / 32 : go->height / 16;
 u16 pack[] = {
  0x8000,
  0,
  0,
  0,
  0,
  0,
  0,
  2,
  ((go->board_info->sensor_flags & GO7007_SENSOR_TV) &&
      (!go->interlace_coding) ?
     (1 << 14) | (1 << 9) : 0) |
   ((go->encoder_subsample ? 1 : 0) << 8) |
   (go->board_info->sensor_flags &
    GO7007_SENSOR_CONFIG_MASK),
  ((go->encoder_v_halve ? 1 : 0) << 14) |
   (go->encoder_v_halve ? rows << 9 : rows << 8) |
   (go->encoder_h_halve ? 1 << 6 : 0) |
   (go->encoder_h_halve ? go->width >> 3 : go->width >> 4),
  (1 << 15) | (go->encoder_v_offset << 6) |
   (1 << 7) | (go->encoder_h_offset >> 2),
  (1 << 6),
  0,
  0,
  ((go->fps_scale - 1) << 8) |
   (go->board_info->sensor_flags & GO7007_SENSOR_TV ?
      (1 << 7) : 0) |
   0x41,
  go->ipb ? 0xd4c : 0x36b,
  (rows << 8) | (go->width >> 4),
  go->format == V4L2_PIX_FMT_MPEG4 ? 0x0404 : 0,
  (1 << 15) | ((go->interlace_coding ? 1 : 0) << 13) |
   ((go->closed_gop ? 1 : 0) << 12) |
   ((go->format == V4L2_PIX_FMT_MPEG4 ? 1 : 0) << 11) |

   ((go->ipb ? 3 : 0) << 7) |
   ((go->modet_enable ? 1 : 0) << 2) |
   ((go->dvd_mode ? 1 : 0) << 1) | 1,
  (go->format == V4L2_PIX_FMT_MPEG1 ? 0x89a0 :
   (go->format == V4L2_PIX_FMT_MPEG2 ? 0x89a0 :
   (go->format == V4L2_PIX_FMT_MJPEG ? 0x89a0 :
   (go->format == V4L2_PIX_FMT_MPEG4 ? 0x8920 :
   (go->format == V4L2_PIX_FMT_H263 ? 0x8920 : 0))))),
  go->ipb ? 0x1f15 : 0x1f0b,
  go->ipb ? 0x0015 : 0x000b,
  go->ipb ? 0xa800 : 0x5800,
  0xffff,
  0x0020 + 0x034b * 0,
  0x0020 + 0x034b * 1,
  0x0020 + 0x034b * 2,
  0x0020 + 0x034b * 3,
  0x0020 + 0x034b * 4,
  0x0020 + 0x034b * 5,
  go->ipb ? (go->gop_size / 3) : go->gop_size,
  (go->height >> 4) * (go->width >> 4) * 110 / 100,
 };

 return copy_packages(code, pack, 1, space);
}
