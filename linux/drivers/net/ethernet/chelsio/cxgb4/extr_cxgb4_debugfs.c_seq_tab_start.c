
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_tab {scalar_t__ skip_first; } ;
struct seq_file {struct seq_tab* private; } ;
typedef scalar_t__ loff_t ;


 void* SEQ_START_TOKEN ;
 void* seq_tab_get_idx (struct seq_tab*,scalar_t__) ;

__attribute__((used)) static void *seq_tab_start(struct seq_file *seq, loff_t *pos)
{
 struct seq_tab *tb = seq->private;

 if (tb->skip_first && *pos == 0)
  return SEQ_START_TOKEN;

 return seq_tab_get_idx(tb, *pos);
}
