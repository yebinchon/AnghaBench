
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
typedef int loff_t ;


 void* interfaces_get_idx (int ,int ) ;

__attribute__((used)) static void *interfaces_next(struct seq_file *seq, void *v, loff_t *pos)
{
 (*pos)++;
 return interfaces_get_idx(seq->private, *pos);
}
