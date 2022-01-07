
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_regs {int e_stream_buffer_size; int e_stream_buffer_addr; } ;
struct s5p_mfc_dev {struct s5p_mfc_regs* mfc_regs; } ;
struct s5p_mfc_ctx {struct s5p_mfc_dev* dev; } ;


 int mfc_debug (int,char*,unsigned long,unsigned int) ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static int s5p_mfc_set_enc_stream_buffer_v6(struct s5p_mfc_ctx *ctx,
  unsigned long addr, unsigned int size)
{
 struct s5p_mfc_dev *dev = ctx->dev;
 const struct s5p_mfc_regs *mfc_regs = dev->mfc_regs;

 writel(addr, mfc_regs->e_stream_buffer_addr);
 writel(size, mfc_regs->e_stream_buffer_size);

 mfc_debug(2, "stream buf addr: 0x%08lx, size: 0x%x\n",
    addr, size);

 return 0;
}
