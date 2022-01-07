
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int s32 ;



 int abs (int) ;
 int seq_printf (struct seq_file*,char*,char const*,...) ;

__attribute__((used)) static void print_temp(struct seq_file *s, const char *prefix, s32 t)
{
 switch (t) {
 case 0:
 case 128:
  seq_printf(s, "%s N/A\n", prefix);
 break;
 default:
  seq_printf(s, "%s %s%d.%03d\n", prefix, (t < 0 ? "-" : ""),
      abs(t / 1000), abs(t % 1000));
  break;
 }
}
