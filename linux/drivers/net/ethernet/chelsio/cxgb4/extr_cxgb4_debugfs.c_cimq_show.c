
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,int,int const,int const,int const,int const) ;

__attribute__((used)) static int cimq_show(struct seq_file *seq, void *v, int idx)
{
 const u32 *p = v;

 seq_printf(seq, "%#06x: %08x %08x %08x %08x\n", idx * 16, p[0], p[1],
     p[2], p[3]);
 return 0;
}
