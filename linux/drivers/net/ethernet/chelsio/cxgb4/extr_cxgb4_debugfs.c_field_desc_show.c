
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct seq_file {int dummy; } ;
struct field_desc {unsigned long long width; unsigned long long start; int name; } ;
typedef int buf ;


 int scnprintf (char*,int,char*,int ,unsigned long long) ;
 int seq_printf (struct seq_file*,char*,char*) ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void field_desc_show(struct seq_file *seq, u64 v,
       const struct field_desc *p)
{
 char buf[32];
 int line_size = 0;

 while (p->name) {
  u64 mask = (1ULL << p->width) - 1;
  int len = scnprintf(buf, sizeof(buf), "%s: %llu", p->name,
        ((unsigned long long)v >> p->start) & mask);

  if (line_size + len >= 79) {
   line_size = 8;
   seq_puts(seq, "\n        ");
  }
  seq_printf(seq, "%s ", buf);
  line_size += len + 1;
  p++;
 }
 seq_putc(seq, '\n');
}
