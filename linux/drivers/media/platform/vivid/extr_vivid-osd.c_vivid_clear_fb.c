
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int length; } ;
struct TYPE_4__ {TYPE_1__ green; } ;
struct vivid_dev {unsigned int display_height; unsigned int display_width; int display_byte_stride; TYPE_2__ fb_defined; void* video_vbase; } ;


 int * rgb555 ;
 int * rgb565 ;

void vivid_clear_fb(struct vivid_dev *dev)
{
 void *p = dev->video_vbase;
 const u16 *rgb = rgb555;
 unsigned x, y;

 if (dev->fb_defined.green.length == 6)
  rgb = rgb565;

 for (y = 0; y < dev->display_height; y++) {
  u16 *d = p;

  for (x = 0; x < dev->display_width; x++)
   d[x] = rgb[(y / 16 + x / 16) % 16];
  p += dev->display_byte_stride;
 }
}
