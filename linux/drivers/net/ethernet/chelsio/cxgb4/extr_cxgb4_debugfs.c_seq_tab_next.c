
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
typedef scalar_t__ loff_t ;


 void* seq_tab_get_idx (int ,scalar_t__) ;

__attribute__((used)) static void *seq_tab_next(struct seq_file *seq, void *v, loff_t *pos)
{
 v = seq_tab_get_idx(seq->private, *pos + 1);
 if (v)
  ++*pos;
 return v;
}
