
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int file; } ;
struct ap_data {int sta_list; } ;
typedef int loff_t ;


 struct ap_data* PDE_DATA (int ) ;
 int file_inode (int ) ;
 void* seq_list_next (void*,int *,int *) ;

__attribute__((used)) static void *prism2_ap_proc_next(struct seq_file *m, void *v, loff_t *_pos)
{
 struct ap_data *ap = PDE_DATA(file_inode(m->file));
 return seq_list_next(v, &ap->sta_list, _pos);
}
