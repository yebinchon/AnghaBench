
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int dummy; } ;
struct s5p_mfc_ctx {unsigned int dec_src_buf_size; struct s5p_mfc_dev* dev; } ;


 unsigned int OFFSETA (int) ;
 int S5P_FIMV_SI_CH0_CPB_SIZE ;
 int S5P_FIMV_SI_CH0_SB_FRM_SIZE ;
 int S5P_FIMV_SI_CH0_SB_ST_ADR ;
 int START_BYTE_NUM ;
 int mfc_write (struct s5p_mfc_dev*,unsigned int,int ) ;
 int s5p_mfc_write_info_v5 (struct s5p_mfc_ctx*,unsigned int,int ) ;

__attribute__((used)) static int s5p_mfc_set_dec_stream_buffer_v5(struct s5p_mfc_ctx *ctx,
  int buf_addr, unsigned int start_num_byte,
  unsigned int buf_size)
{
 struct s5p_mfc_dev *dev = ctx->dev;

 mfc_write(dev, OFFSETA(buf_addr), S5P_FIMV_SI_CH0_SB_ST_ADR);
 mfc_write(dev, ctx->dec_src_buf_size, S5P_FIMV_SI_CH0_CPB_SIZE);
 mfc_write(dev, buf_size, S5P_FIMV_SI_CH0_SB_FRM_SIZE);
 s5p_mfc_write_info_v5(ctx, start_num_byte, START_BYTE_NUM);
 return 0;
}
