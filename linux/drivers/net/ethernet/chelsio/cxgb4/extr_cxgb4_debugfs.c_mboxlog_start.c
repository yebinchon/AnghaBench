
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef scalar_t__ loff_t ;


 void* SEQ_START_TOKEN ;
 void* mboxlog_get_idx (struct seq_file*,scalar_t__) ;

__attribute__((used)) static void *mboxlog_start(struct seq_file *seq, loff_t *pos)
{
 return *pos ? mboxlog_get_idx(seq, *pos) : SEQ_START_TOKEN;
}
