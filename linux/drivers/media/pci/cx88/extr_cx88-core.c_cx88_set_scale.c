
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cx88_core {int tvnorm; int input; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ CX88_VMUX_SVIDEO ;
 TYPE_1__ INPUT (int ) ;
 int MO_FILTER_EVEN ;
 int MO_FILTER_ODD ;
 int MO_HACTIVE_EVEN ;
 int MO_HACTIVE_ODD ;
 int MO_HDELAY_EVEN ;
 int MO_HDELAY_ODD ;
 int MO_HSCALE_EVEN ;
 int MO_HSCALE_ODD ;
 int MO_VACTIVE_EVEN ;
 int MO_VACTIVE_ODD ;
 int MO_VDELAY_EVEN ;
 int MO_VDELAY_ODD ;
 int MO_VSCALE_EVEN ;
 int MO_VSCALE_ODD ;
 int V4L2_FIELD_HAS_BOTH (int) ;
 scalar_t__ V4L2_FIELD_HAS_BOTTOM (int) ;
 scalar_t__ V4L2_FIELD_HAS_TOP (int) ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_STD_SECAM ;
 int cx_andor (int ,int,int) ;
 int cx_write (int ,unsigned int) ;
 int dprintk (int,char*,int,...) ;
 scalar_t__ nocomb ;
 unsigned int norm_hdelay (int) ;
 unsigned int norm_maxh (int) ;
 unsigned int norm_swidth (int) ;
 int norm_vdelay (int) ;
 int v4l2_norm_to_name (int) ;

int cx88_set_scale(struct cx88_core *core, unsigned int width,
     unsigned int height, enum v4l2_field field)
{
 unsigned int swidth = norm_swidth(core->tvnorm);
 unsigned int sheight = norm_maxh(core->tvnorm);
 u32 value;

 dprintk(1, "set_scale: %dx%d [%s%s,%s]\n", width, height,
  V4L2_FIELD_HAS_TOP(field) ? "T" : "",
  V4L2_FIELD_HAS_BOTTOM(field) ? "B" : "",
  v4l2_norm_to_name(core->tvnorm));
 if (!V4L2_FIELD_HAS_BOTH(field))
  height *= 2;


 value = (width * norm_hdelay(core->tvnorm)) / swidth;
 value &= 0x3fe;
 cx_write(MO_HDELAY_EVEN, value);
 cx_write(MO_HDELAY_ODD, value);
 dprintk(1, "set_scale: hdelay  0x%04x (width %d)\n", value, swidth);

 value = (swidth * 4096 / width) - 4096;
 cx_write(MO_HSCALE_EVEN, value);
 cx_write(MO_HSCALE_ODD, value);
 dprintk(1, "set_scale: hscale  0x%04x\n", value);

 cx_write(MO_HACTIVE_EVEN, width);
 cx_write(MO_HACTIVE_ODD, width);
 dprintk(1, "set_scale: hactive 0x%04x\n", width);


 cx_write(MO_VDELAY_EVEN, norm_vdelay(core->tvnorm));
 cx_write(MO_VDELAY_ODD, norm_vdelay(core->tvnorm));
 dprintk(1, "set_scale: vdelay  0x%04x\n", norm_vdelay(core->tvnorm));

 value = (0x10000 - (sheight * 512 / height - 512)) & 0x1fff;
 cx_write(MO_VSCALE_EVEN, value);
 cx_write(MO_VSCALE_ODD, value);
 dprintk(1, "set_scale: vscale  0x%04x\n", value);

 cx_write(MO_VACTIVE_EVEN, sheight);
 cx_write(MO_VACTIVE_ODD, sheight);
 dprintk(1, "set_scale: vactive 0x%04x\n", sheight);


 value = 0;
 value |= (1 << 19);
 if (core->tvnorm & V4L2_STD_SECAM) {
  value |= (1 << 15);
  value |= (1 << 16);
 }
 if (INPUT(core->input).type == CX88_VMUX_SVIDEO)
  value |= (1 << 13) | (1 << 5);
 if (field == V4L2_FIELD_INTERLACED)
  value |= (1 << 3);
 if (width < 385)
  value |= (1 << 0);
 if (width < 193)
  value |= (1 << 1);
 if (nocomb)
  value |= (3 << 5);

 cx_andor(MO_FILTER_EVEN, 0x7ffc7f, value);
 cx_andor(MO_FILTER_ODD, 0x7ffc7f, value);
 dprintk(1, "set_scale: filter  0x%04x\n", value);

 return 0;
}
