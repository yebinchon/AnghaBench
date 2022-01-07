
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {scalar_t__ private; } ;
struct TYPE_2__ {int min_ver; int maj_ver; int chip; int full; } ;
struct kim_data_s {TYPE_1__ version; } ;


 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ) ;

__attribute__((used)) static int version_show(struct seq_file *s, void *unused)
{
 struct kim_data_s *kim_gdata = (struct kim_data_s *)s->private;
 seq_printf(s, "%04X %d.%d.%d\n", kim_gdata->version.full,
   kim_gdata->version.chip, kim_gdata->version.maj_ver,
   kim_gdata->version.min_ver);
 return 0;
}
