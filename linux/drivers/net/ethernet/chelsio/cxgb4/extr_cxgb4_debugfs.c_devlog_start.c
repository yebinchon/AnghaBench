
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct devlog_info* private; } ;
struct devlog_info {int dummy; } ;
typedef int loff_t ;


 void* SEQ_START_TOKEN ;
 void* devlog_get_idx (struct devlog_info*,int ) ;

__attribute__((used)) static void *devlog_start(struct seq_file *seq, loff_t *pos)
{
 struct devlog_info *dinfo = seq->private;

 return (*pos
  ? devlog_get_idx(dinfo, *pos)
  : SEQ_START_TOKEN);
}
