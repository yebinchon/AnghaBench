
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct genwqe_dev* private; } ;
struct genwqe_dev {TYPE_1__* ffdc; } ;
struct TYPE_2__ {int entries; int regs; } ;


 int dbg_uidn_show (struct seq_file*,int ,int ) ;

__attribute__((used)) static int prev_dbg_uidn_show(struct seq_file *s, void *unused, int uid)
{
 struct genwqe_dev *cd = s->private;

 dbg_uidn_show(s, cd->ffdc[uid].regs, cd->ffdc[uid].entries);
 return 0;
}
