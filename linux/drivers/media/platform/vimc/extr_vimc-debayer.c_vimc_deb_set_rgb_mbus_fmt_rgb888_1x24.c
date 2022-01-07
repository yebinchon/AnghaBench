
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; } ;
struct vimc_deb_device {unsigned int* src_frame; TYPE_1__ sink_fmt; } ;


 unsigned int VIMC_FRAME_INDEX (unsigned int,unsigned int,int ,int) ;

__attribute__((used)) static void vimc_deb_set_rgb_mbus_fmt_rgb888_1x24(struct vimc_deb_device *vdeb,
        unsigned int lin,
        unsigned int col,
        unsigned int rgb[3])
{
 unsigned int i, index;

 index = VIMC_FRAME_INDEX(lin, col, vdeb->sink_fmt.width, 3);
 for (i = 0; i < 3; i++)
  vdeb->src_frame[index + i] = rgb[i];
}
