
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vpdma_data_format {scalar_t__ type; } ;
struct vpdma_data {int dummy; } ;


 int VPDMA_BG_RGB ;
 int VPDMA_BG_YUV ;
 scalar_t__ VPDMA_DATA_FMT_TYPE_RGB ;
 scalar_t__ VPDMA_DATA_FMT_TYPE_YUV ;
 int write_reg (struct vpdma_data*,int ,int ) ;

void vpdma_set_bg_color(struct vpdma_data *vpdma,
  struct vpdma_data_format *fmt, u32 color)
{
 if (fmt->type == VPDMA_DATA_FMT_TYPE_RGB)
  write_reg(vpdma, VPDMA_BG_RGB, color);
 else if (fmt->type == VPDMA_DATA_FMT_TYPE_YUV)
  write_reg(vpdma, VPDMA_BG_YUV, color);
}
