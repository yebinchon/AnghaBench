
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct ath5k_hw* private; } ;
struct reg {int addr; int name; } ;
struct ath5k_hw {int dummy; } ;


 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;
 int seq_printf (struct seq_file*,char*,int ,int ) ;

__attribute__((used)) static int reg_show(struct seq_file *seq, void *p)
{
 struct ath5k_hw *ah = seq->private;
 struct reg *r = p;
 seq_printf(seq, "%-25s0x%08x\n", r->name,
  ath5k_hw_reg_read(ah, r->addr));
 return 0;
}
