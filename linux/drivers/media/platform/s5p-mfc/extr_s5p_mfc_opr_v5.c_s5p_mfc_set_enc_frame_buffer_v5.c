
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int dummy; } ;
struct s5p_mfc_ctx {struct s5p_mfc_dev* dev; } ;


 int OFFSETB (unsigned long) ;
 int S5P_FIMV_ENC_SI_CH0_CUR_C_ADR ;
 int S5P_FIMV_ENC_SI_CH0_CUR_Y_ADR ;
 int mfc_write (struct s5p_mfc_dev*,int ,int ) ;

__attribute__((used)) static void s5p_mfc_set_enc_frame_buffer_v5(struct s5p_mfc_ctx *ctx,
  unsigned long y_addr, unsigned long c_addr)
{
 struct s5p_mfc_dev *dev = ctx->dev;

 mfc_write(dev, OFFSETB(y_addr), S5P_FIMV_ENC_SI_CH0_CUR_Y_ADR);
 mfc_write(dev, OFFSETB(c_addr), S5P_FIMV_ENC_SI_CH0_CUR_C_ADR);
}
