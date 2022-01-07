
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct l2t_data* private; } ;
struct l2t_data {size_t l2t_size; void* l2tab; } ;
typedef size_t loff_t ;



__attribute__((used)) static inline void *l2t_get_idx(struct seq_file *seq, loff_t pos)
{
 struct l2t_data *d = seq->private;

 return pos >= d->l2t_size ? ((void*)0) : &d->l2tab[pos];
}
