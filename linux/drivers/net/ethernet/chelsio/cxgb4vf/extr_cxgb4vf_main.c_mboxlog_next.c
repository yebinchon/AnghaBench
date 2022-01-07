
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 void* mboxlog_get_idx (struct seq_file*,int ) ;

__attribute__((used)) static void *mboxlog_next(struct seq_file *seq, void *v, loff_t *pos)
{
 ++*pos;
 return mboxlog_get_idx(seq, *pos);
}
