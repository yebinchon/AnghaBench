
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {unsigned long* dma_base; } ;
struct s5p_mfc_ctx {struct s5p_mfc_dev* dev; } ;


 size_t BANK_R_CTX ;
 unsigned long MFC_OFFSET_SHIFT ;
 int S5P_FIMV_ENCODED_C_ADDR ;
 int S5P_FIMV_ENCODED_Y_ADDR ;
 unsigned long mfc_read (struct s5p_mfc_dev*,int ) ;

__attribute__((used)) static void s5p_mfc_get_enc_frame_buffer_v5(struct s5p_mfc_ctx *ctx,
  unsigned long *y_addr, unsigned long *c_addr)
{
 struct s5p_mfc_dev *dev = ctx->dev;

 *y_addr = dev->dma_base[BANK_R_CTX] +
    (mfc_read(dev, S5P_FIMV_ENCODED_Y_ADDR) << MFC_OFFSET_SHIFT);
 *c_addr = dev->dma_base[BANK_R_CTX] +
    (mfc_read(dev, S5P_FIMV_ENCODED_C_ADDR) << MFC_OFFSET_SHIFT);
}
