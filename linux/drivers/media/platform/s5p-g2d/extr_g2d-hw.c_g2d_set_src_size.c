
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct g2d_frame {int stride; int o_height; int o_width; int bottom; int right; TYPE_1__* fmt; } ;
struct g2d_dev {int dummy; } ;
struct TYPE_2__ {int hw; } ;


 int SRC_COLOR_MODE_REG ;
 int SRC_LEFT_TOP_REG ;
 int SRC_RIGHT_BOTTOM_REG ;
 int SRC_SELECT_REG ;
 int SRC_STRIDE_REG ;
 int w (int,int ) ;

void g2d_set_src_size(struct g2d_dev *d, struct g2d_frame *f)
{
 u32 n;

 w(0, SRC_SELECT_REG);
 w(f->stride & 0xFFFF, SRC_STRIDE_REG);

 n = f->o_height & 0xFFF;
 n <<= 16;
 n |= f->o_width & 0xFFF;
 w(n, SRC_LEFT_TOP_REG);

 n = f->bottom & 0xFFF;
 n <<= 16;
 n |= f->right & 0xFFF;
 w(n, SRC_RIGHT_BOTTOM_REG);

 w(f->fmt->hw, SRC_COLOR_MODE_REG);
}
