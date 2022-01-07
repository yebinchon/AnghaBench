
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct devlog_info* private; } ;
struct devlog_info {int dummy; } ;
typedef int loff_t ;


 void* devlog_get_idx (struct devlog_info*,int ) ;

__attribute__((used)) static void *devlog_next(struct seq_file *seq, void *v, loff_t *pos)
{
 struct devlog_info *dinfo = seq->private;

 (*pos)++;
 return devlog_get_idx(dinfo, *pos);
}
