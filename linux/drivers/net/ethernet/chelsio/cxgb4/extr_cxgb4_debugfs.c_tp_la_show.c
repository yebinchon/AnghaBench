
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct seq_file {int dummy; } ;


 int field_desc_show (struct seq_file*,int const,int ) ;
 int tp_la0 ;

__attribute__((used)) static int tp_la_show(struct seq_file *seq, void *v, int idx)
{
 const u64 *p = v;

 field_desc_show(seq, *p, tp_la0);
 return 0;
}
