
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5p_mfc_regs {int d_cpb_buffer_offset; int d_cpb_buffer_size; int d_cpb_buffer_addr; int d_stream_data_size; } ;
struct s5p_mfc_dev {TYPE_1__* variant; struct s5p_mfc_regs* mfc_regs; } ;
struct s5p_mfc_ctx {int inst_no; struct s5p_mfc_dev* dev; } ;
struct s5p_mfc_buf_size {unsigned int cpb; } ;
struct TYPE_2__ {struct s5p_mfc_buf_size* buf_size; } ;


 int mfc_debug (int,char*,int ,int,unsigned int,unsigned int) ;
 int mfc_debug_enter () ;
 int mfc_debug_leave () ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static int s5p_mfc_set_dec_stream_buffer_v6(struct s5p_mfc_ctx *ctx,
   int buf_addr, unsigned int start_num_byte,
   unsigned int strm_size)
{
 struct s5p_mfc_dev *dev = ctx->dev;
 const struct s5p_mfc_regs *mfc_regs = dev->mfc_regs;
 struct s5p_mfc_buf_size *buf_size = dev->variant->buf_size;

 mfc_debug_enter();
 mfc_debug(2, "inst_no: %d, buf_addr: 0x%08x,\n"
  "buf_size: 0x%08x (%d)\n",
  ctx->inst_no, buf_addr, strm_size, strm_size);
 writel(strm_size, mfc_regs->d_stream_data_size);
 writel(buf_addr, mfc_regs->d_cpb_buffer_addr);
 writel(buf_size->cpb, mfc_regs->d_cpb_buffer_size);
 writel(start_num_byte, mfc_regs->d_cpb_buffer_offset);

 mfc_debug_leave();
 return 0;
}
