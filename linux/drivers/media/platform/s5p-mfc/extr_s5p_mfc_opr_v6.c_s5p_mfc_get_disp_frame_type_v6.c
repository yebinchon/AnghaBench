
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5p_mfc_dev {TYPE_1__* mfc_regs; } ;
struct s5p_mfc_ctx {struct s5p_mfc_dev* dev; } ;
struct TYPE_2__ {int d_display_frame_type; } ;


 int S5P_FIMV_DECODE_FRAME_MASK_V6 ;
 int readl (int ) ;

__attribute__((used)) static int s5p_mfc_get_disp_frame_type_v6(struct s5p_mfc_ctx *ctx)
{
 struct s5p_mfc_dev *dev = ctx->dev;
 return readl(dev->mfc_regs->d_display_frame_type) &
  S5P_FIMV_DECODE_FRAME_MASK_V6;
}
