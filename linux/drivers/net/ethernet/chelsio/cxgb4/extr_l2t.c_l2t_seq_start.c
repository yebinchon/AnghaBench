
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef scalar_t__ loff_t ;


 void* SEQ_START_TOKEN ;
 void* l2t_get_idx (struct seq_file*,scalar_t__) ;

__attribute__((used)) static void *l2t_seq_start(struct seq_file *seq, loff_t *pos)
{
 return *pos ? l2t_get_idx(seq, *pos - 1) : SEQ_START_TOKEN;
}
