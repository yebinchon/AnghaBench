
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_tab {scalar_t__ data; } ;
struct inode {struct adapter* i_private; } ;
struct file {int dummy; } ;
struct adapter {int dummy; } ;


 int CIM_MALA_SIZE ;
 int ENOMEM ;
 int cim_ma_la_show ;
 struct seq_tab* seq_open_tab (struct file*,int,int,int,int ) ;
 int t4_cim_read_ma_la (struct adapter*,int *,int *) ;

__attribute__((used)) static int cim_ma_la_open(struct inode *inode, struct file *file)
{
 struct seq_tab *p;
 struct adapter *adap = inode->i_private;

 p = seq_open_tab(file, 2 * CIM_MALA_SIZE, 5 * sizeof(u32), 1,
    cim_ma_la_show);
 if (!p)
  return -ENOMEM;

 t4_cim_read_ma_la(adap, (u32 *)p->data,
     (u32 *)p->data + 5 * CIM_MALA_SIZE);
 return 0;
}
