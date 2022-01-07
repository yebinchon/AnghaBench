
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct genwqe_dev* private; } ;
struct genwqe_reg {int addr; int val; } ;
struct genwqe_dev {TYPE_1__* ffdc; } ;
struct TYPE_2__ {struct genwqe_reg* regs; } ;


 int EINVAL ;
 size_t GENWQE_DBG_REGS ;
 unsigned int GENWQE_FFDC_REGS ;
 int seq_printf (struct seq_file*,char*,int,int) ;

__attribute__((used)) static int prev_regs_show(struct seq_file *s, void *unused)
{
 struct genwqe_dev *cd = s->private;
 unsigned int i;
 struct genwqe_reg *regs = cd->ffdc[GENWQE_DBG_REGS].regs;

 if (regs == ((void*)0))
  return -EINVAL;

 for (i = 0; i < GENWQE_FFDC_REGS; i++) {
  if (regs[i].addr == 0xffffffff)
   break;

  if (regs[i].val == 0x0ull)
   continue;

  seq_printf(s, "  0x%08x 0x%016llx\n",
      regs[i].addr, regs[i].val);
 }
 return 0;
}
