
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct hva_dev* private; } ;
struct hva_dev {int dummy; } ;


 int hva_hw_dump_regs (struct hva_dev*,struct seq_file*) ;

__attribute__((used)) static int regs_show(struct seq_file *s, void *data)
{
 struct hva_dev *hva = s->private;

 hva_hw_dump_regs(hva, s);

 return 0;
}
