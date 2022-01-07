
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
typedef int loff_t ;


 int sge_queue_entries (int ) ;

__attribute__((used)) static void *sge_queue_start(struct seq_file *seq, loff_t *pos)
{
 int entries = sge_queue_entries(seq->private);

 return *pos < entries ? (void *)((uintptr_t)*pos + 1) : ((void*)0);
}
