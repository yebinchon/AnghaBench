
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int file; } ;
struct TYPE_3__ {int iface_lock; } ;
typedef TYPE_1__ local_info_t ;


 TYPE_1__* PDE_DATA (int ) ;
 int file_inode (int ) ;
 int read_unlock_bh (int *) ;

__attribute__((used)) static void prism2_wds_proc_stop(struct seq_file *m, void *v)
{
 local_info_t *local = PDE_DATA(file_inode(m->file));
 read_unlock_bh(&local->iface_lock);
}
