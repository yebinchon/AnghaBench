
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int file; } ;
struct TYPE_2__ {int lock; } ;
struct ap_data {TYPE_1__ mac_restrictions; } ;


 struct ap_data* PDE_DATA (int ) ;
 int file_inode (int ) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ap_control_proc_stop(struct seq_file *m, void *v)
{
 struct ap_data *ap = PDE_DATA(file_inode(m->file));
 spin_unlock_bh(&ap->mac_restrictions.lock);
}
