
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct seq_file {int dummy; } ;
typedef int buf ;


 int STRING_UNITS_2 ;
 int seq_printf (struct seq_file*,char*,char const*,unsigned int,unsigned int,char*) ;
 int string_get_size (scalar_t__,int,int ,char*,int) ;

__attribute__((used)) static void mem_region_show(struct seq_file *seq, const char *name,
       unsigned int from, unsigned int to)
{
 char buf[40];

 string_get_size((u64)to - from + 1, 1, STRING_UNITS_2, buf,
   sizeof(buf));
 seq_printf(seq, "%-15s %#x-%#x [%s]\n", name, from, to, buf);
}
