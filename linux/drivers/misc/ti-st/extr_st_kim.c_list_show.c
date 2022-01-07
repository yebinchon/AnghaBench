
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {scalar_t__ private; } ;
struct kim_data_s {int core_data; } ;


 int kim_st_list_protocols (int ,struct seq_file*) ;

__attribute__((used)) static int list_show(struct seq_file *s, void *unused)
{
 struct kim_data_s *kim_gdata = (struct kim_data_s *)s->private;
 kim_st_list_protocols(kim_gdata->core_data, s);
 return 0;
}
