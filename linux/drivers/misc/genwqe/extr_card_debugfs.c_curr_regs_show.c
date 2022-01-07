
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct genwqe_dev* private; } ;
struct genwqe_reg {int addr; int val; } ;
struct genwqe_dev {int dummy; } ;


 int ENOMEM ;
 unsigned int GENWQE_FFDC_REGS ;
 int GFP_KERNEL ;
 int genwqe_read_ffdc_regs (struct genwqe_dev*,struct genwqe_reg*,unsigned int,int) ;
 int genwqe_start_traps (struct genwqe_dev*) ;
 int genwqe_stop_traps (struct genwqe_dev*) ;
 struct genwqe_reg* kcalloc (unsigned int,int,int ) ;
 int seq_printf (struct seq_file*,char*,int,int) ;

__attribute__((used)) static int curr_regs_show(struct seq_file *s, void *unused)
{
 struct genwqe_dev *cd = s->private;
 unsigned int i;
 struct genwqe_reg *regs;

 regs = kcalloc(GENWQE_FFDC_REGS, sizeof(*regs), GFP_KERNEL);
 if (regs == ((void*)0))
  return -ENOMEM;

 genwqe_stop_traps(cd);
 genwqe_read_ffdc_regs(cd, regs, GENWQE_FFDC_REGS, 1);
 genwqe_start_traps(cd);

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
