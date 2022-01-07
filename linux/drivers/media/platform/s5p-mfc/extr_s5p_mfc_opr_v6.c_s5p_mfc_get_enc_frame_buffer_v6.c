
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_regs {int e_recon_chroma_dpb_addr; int e_recon_luma_dpb_addr; int e_encoded_source_second_plane_addr; int e_encoded_source_first_plane_addr; } ;
struct s5p_mfc_dev {struct s5p_mfc_regs* mfc_regs; } ;
struct s5p_mfc_ctx {struct s5p_mfc_dev* dev; } ;


 int mfc_debug (int,char*,unsigned long,...) ;
 unsigned long readl (int ) ;

__attribute__((used)) static void s5p_mfc_get_enc_frame_buffer_v6(struct s5p_mfc_ctx *ctx,
  unsigned long *y_addr, unsigned long *c_addr)
{
 struct s5p_mfc_dev *dev = ctx->dev;
 const struct s5p_mfc_regs *mfc_regs = dev->mfc_regs;
 unsigned long enc_recon_y_addr, enc_recon_c_addr;

 *y_addr = readl(mfc_regs->e_encoded_source_first_plane_addr);
 *c_addr = readl(mfc_regs->e_encoded_source_second_plane_addr);

 enc_recon_y_addr = readl(mfc_regs->e_recon_luma_dpb_addr);
 enc_recon_c_addr = readl(mfc_regs->e_recon_chroma_dpb_addr);

 mfc_debug(2, "recon y addr: 0x%08lx y_addr: 0x%08lx\n", enc_recon_y_addr, *y_addr);
 mfc_debug(2, "recon c addr: 0x%08lx\n", enc_recon_c_addr);
}
