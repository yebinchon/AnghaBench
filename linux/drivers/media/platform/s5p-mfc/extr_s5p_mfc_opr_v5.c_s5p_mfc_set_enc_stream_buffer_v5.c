
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int dummy; } ;
struct s5p_mfc_ctx {struct s5p_mfc_dev* dev; } ;


 unsigned int OFFSETA (unsigned long) ;
 int S5P_FIMV_ENC_SI_CH0_SB_ADR ;
 int S5P_FIMV_ENC_SI_CH0_SB_SIZE ;
 int mfc_write (struct s5p_mfc_dev*,unsigned int,int ) ;

__attribute__((used)) static int s5p_mfc_set_enc_stream_buffer_v5(struct s5p_mfc_ctx *ctx,
  unsigned long addr, unsigned int size)
{
 struct s5p_mfc_dev *dev = ctx->dev;

 mfc_write(dev, OFFSETA(addr), S5P_FIMV_ENC_SI_CH0_SB_ADR);
 mfc_write(dev, size, S5P_FIMV_ENC_SI_CH0_SB_SIZE);
 return 0;
}
