
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef char const* s8 ;


 int seq_printf (struct seq_file*,char*,char const*) ;
 int seq_puts (struct seq_file*,char*) ;

void mt76_seq_puts_array(struct seq_file *file, const char *str,
    s8 *val, int len)
{
 int i;

 seq_printf(file, "%10s:", str);
 for (i = 0; i < len; i++)
  seq_printf(file, " %2d", val[i]);
 seq_puts(file, "\n");
}
