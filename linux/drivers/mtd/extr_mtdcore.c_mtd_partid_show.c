
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct mtd_info* private; } ;
struct TYPE_2__ {int partid; } ;
struct mtd_info {TYPE_1__ dbg; } ;


 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int mtd_partid_show(struct seq_file *s, void *p)
{
 struct mtd_info *mtd = s->private;

 seq_printf(s, "%s\n", mtd->dbg.partid);

 return 0;
}
