
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 void* l2t_get_idx (struct seq_file*,int ) ;

__attribute__((used)) static void *l2t_seq_next(struct seq_file *seq, void *v, loff_t *pos)
{
 v = l2t_get_idx(seq, *pos);
 if (v)
  ++*pos;
 return v;
}
