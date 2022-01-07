
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_tab {scalar_t__ data; } ;
struct inode {struct adapter* i_private; } ;
struct file {int dummy; } ;
struct adapter {int dummy; } ;


 int ENOMEM ;
 int ULPRX_LA_SIZE ;
 struct seq_tab* seq_open_tab (struct file*,int ,int,int,int ) ;
 int t4_ulprx_read_la (struct adapter*,int *) ;
 int ulprx_la_show ;

__attribute__((used)) static int ulprx_la_open(struct inode *inode, struct file *file)
{
 struct seq_tab *p;
 struct adapter *adap = inode->i_private;

 p = seq_open_tab(file, ULPRX_LA_SIZE, 8 * sizeof(u32), 1,
    ulprx_la_show);
 if (!p)
  return -ENOMEM;

 t4_ulprx_read_la(adap, (u32 *)p->data);
 return 0;
}
