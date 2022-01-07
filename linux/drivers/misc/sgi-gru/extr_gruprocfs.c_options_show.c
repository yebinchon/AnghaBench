
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int gru_options ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static int options_show(struct seq_file *s, void *p)
{
 seq_printf(s, "#bitmask: 1=trace, 2=statistics\n");
 seq_printf(s, "0x%lx\n", gru_options);
 return 0;
}
