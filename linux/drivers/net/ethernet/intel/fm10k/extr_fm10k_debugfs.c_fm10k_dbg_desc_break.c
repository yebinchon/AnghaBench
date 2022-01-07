
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_putc (struct seq_file*,char) ;

__attribute__((used)) static void fm10k_dbg_desc_break(struct seq_file *s, int i)
{
 while (i--)
  seq_putc(s, '-');

 seq_putc(s, '\n');
}
