
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int left; unsigned int top; unsigned int height; int width; } ;
struct sh_veu_vfmt {int offset_y; int offset_c; TYPE_4__ frame; TYPE_3__* fmt; } ;
struct TYPE_6__ {int bytesperline; TYPE_1__* fmt; } ;
struct sh_veu_dev {TYPE_2__ vfmt_out; } ;
typedef int dma_addr_t ;
struct TYPE_7__ {int fourcc; } ;
struct TYPE_5__ {int depth; } ;


 unsigned int ALIGN (int ,int) ;
 int BUG () ;
__attribute__((used)) static void sh_veu_colour_offset(struct sh_veu_dev *veu, struct sh_veu_vfmt *vfmt)
{

 unsigned int left = vfmt->frame.left & ~0x03;
 unsigned int top = vfmt->frame.top;
 dma_addr_t offset = (dma_addr_t)top * veu->vfmt_out.bytesperline +
   (((dma_addr_t)left * veu->vfmt_out.fmt->depth) >> 3);
 unsigned int y_line;

 vfmt->offset_y = offset;

 switch (vfmt->fmt->fourcc) {
 case 134:
 case 133:
 case 132:
  y_line = ALIGN(vfmt->frame.width, 16);
  vfmt->offset_c = offset + y_line * vfmt->frame.height;
  break;
 case 130:
 case 129:
 case 128:
 case 135:
 case 131:
  vfmt->offset_c = 0;
  break;
 default:
  BUG();
 }
}
