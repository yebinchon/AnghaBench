
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int file; } ;
typedef scalar_t__ loff_t ;
struct TYPE_3__ {scalar_t__ last_scan_results_count; } ;
typedef TYPE_1__ local_info_t ;


 TYPE_1__* PDE_DATA (int ) ;
 int file_inode (int ) ;

__attribute__((used)) static void *prism2_scan_results_proc_next(struct seq_file *m, void *v, loff_t *_pos)
{
 local_info_t *local = PDE_DATA(file_inode(m->file));

 ++*_pos;
 if (*_pos > local->last_scan_results_count)
  return ((void*)0);
 return (void *)(unsigned long)(*_pos + 1);
}
