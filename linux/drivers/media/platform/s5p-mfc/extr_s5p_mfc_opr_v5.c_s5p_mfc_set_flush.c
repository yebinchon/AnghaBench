
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int dummy; } ;
struct s5p_mfc_ctx {struct s5p_mfc_dev* dev; } ;


 unsigned int S5P_FIMV_DPB_FLUSH_MASK ;
 unsigned int S5P_FIMV_DPB_FLUSH_SHIFT ;
 int S5P_FIMV_SI_CH0_DPB_CONF_CTRL ;
 unsigned int mfc_read (struct s5p_mfc_dev*,int ) ;
 int mfc_write (struct s5p_mfc_dev*,unsigned int,int ) ;

__attribute__((used)) static void s5p_mfc_set_flush(struct s5p_mfc_ctx *ctx, int flush)
{
 struct s5p_mfc_dev *dev = ctx->dev;
 unsigned int dpb;

 if (flush)
  dpb = mfc_read(dev, S5P_FIMV_SI_CH0_DPB_CONF_CTRL) | (
   S5P_FIMV_DPB_FLUSH_MASK << S5P_FIMV_DPB_FLUSH_SHIFT);
 else
  dpb = mfc_read(dev, S5P_FIMV_SI_CH0_DPB_CONF_CTRL) &
   ~(S5P_FIMV_DPB_FLUSH_MASK << S5P_FIMV_DPB_FLUSH_SHIFT);
 mfc_write(dev, dpb, S5P_FIMV_SI_CH0_DPB_CONF_CTRL);
}
