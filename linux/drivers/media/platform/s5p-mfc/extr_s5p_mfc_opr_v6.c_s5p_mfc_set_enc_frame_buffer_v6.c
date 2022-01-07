
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_regs {int e_source_second_plane_addr; int e_source_first_plane_addr; } ;
struct s5p_mfc_dev {struct s5p_mfc_regs* mfc_regs; } ;
struct s5p_mfc_ctx {struct s5p_mfc_dev* dev; } ;


 int mfc_debug (int,char*,unsigned long) ;
 int writel (unsigned long,int ) ;

__attribute__((used)) static void s5p_mfc_set_enc_frame_buffer_v6(struct s5p_mfc_ctx *ctx,
  unsigned long y_addr, unsigned long c_addr)
{
 struct s5p_mfc_dev *dev = ctx->dev;
 const struct s5p_mfc_regs *mfc_regs = dev->mfc_regs;

 writel(y_addr, mfc_regs->e_source_first_plane_addr);
 writel(c_addr, mfc_regs->e_source_second_plane_addr);

 mfc_debug(2, "enc src y buf addr: 0x%08lx\n", y_addr);
 mfc_debug(2, "enc src c buf addr: 0x%08lx\n", c_addr);
}
