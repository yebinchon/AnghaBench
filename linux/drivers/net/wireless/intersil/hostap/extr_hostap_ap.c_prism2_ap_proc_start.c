
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int file; } ;
struct ap_data {int sta_list; int sta_table_lock; } ;
typedef int loff_t ;


 struct ap_data* PDE_DATA (int ) ;
 int file_inode (int ) ;
 void* seq_list_start_head (int *,int ) ;
 int spin_lock_bh (int *) ;

__attribute__((used)) static void *prism2_ap_proc_start(struct seq_file *m, loff_t *_pos)
{
 struct ap_data *ap = PDE_DATA(file_inode(m->file));
 spin_lock_bh(&ap->sta_table_lock);
 return seq_list_start_head(&ap->sta_list, *_pos);
}
