
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int file; } ;
typedef int loff_t ;
struct TYPE_3__ {int bss_list; int lock; } ;
typedef TYPE_1__ local_info_t ;


 TYPE_1__* PDE_DATA (int ) ;
 int file_inode (int ) ;
 void* seq_list_start_head (int *,int ) ;
 int spin_lock_bh (int *) ;

__attribute__((used)) static void *prism2_bss_list_proc_start(struct seq_file *m, loff_t *_pos)
{
 local_info_t *local = PDE_DATA(file_inode(m->file));
 spin_lock_bh(&local->lock);
 return seq_list_start_head(&local->bss_list, *_pos);
}
