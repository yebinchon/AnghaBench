
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g2d_frame {int c_width; int c_height; } ;
struct g2d_dev {int dummy; } ;


 int DEFAULT_SCALE_MODE ;
 int SRC_SCALE_CTRL_REG ;
 int SRC_XSCALE_REG ;
 int SRC_YSCALE_REG ;
 int w (int,int ) ;

void g2d_set_v41_stretch(struct g2d_dev *d, struct g2d_frame *src,
     struct g2d_frame *dst)
{
 w(DEFAULT_SCALE_MODE, SRC_SCALE_CTRL_REG);


 w((src->c_width << 16) / dst->c_width, SRC_XSCALE_REG);
 w((src->c_height << 16) / dst->c_height, SRC_YSCALE_REG);
}
