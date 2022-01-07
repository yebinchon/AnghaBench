
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {int dummy; } ;
struct genwqe_reg {int val; int idx; int addr; } ;


 int seq_printf (struct seq_file*,char*,int ,int ,int,int) ;

__attribute__((used)) static void dbg_uidn_show(struct seq_file *s, struct genwqe_reg *regs,
     int entries)
{
 unsigned int i;
 u32 v_hi, v_lo;

 for (i = 0; i < entries; i++) {
  v_hi = (regs[i].val >> 32) & 0xffffffff;
  v_lo = (regs[i].val) & 0xffffffff;

  seq_printf(s, "  0x%08x 0x%08x 0x%08x 0x%08x EXT_ERR_REC\n",
      regs[i].addr, regs[i].idx, v_hi, v_lo);
 }
}
