
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct seq_tab {scalar_t__ data; } ;
struct inode {struct adapter* i_private; } ;
struct file {int dummy; } ;
struct adapter {int dummy; } ;


 int DBGLAMODE_G (int ) ;
 int ENOMEM ;
 int TPLA_SIZE ;
 int TP_DBG_LA_CONFIG_A ;
 struct seq_tab* seq_open_tab (struct file*,int,int,int ,int ) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_tp_read_la (struct adapter*,int *,int *) ;
 int tp_la_show ;
 int tp_la_show2 ;
 int tp_la_show3 ;

__attribute__((used)) static int tp_la_open(struct inode *inode, struct file *file)
{
 struct seq_tab *p;
 struct adapter *adap = inode->i_private;

 switch (DBGLAMODE_G(t4_read_reg(adap, TP_DBG_LA_CONFIG_A))) {
 case 2:
  p = seq_open_tab(file, TPLA_SIZE / 2, 2 * sizeof(u64), 0,
     tp_la_show2);
  break;
 case 3:
  p = seq_open_tab(file, TPLA_SIZE / 2, 2 * sizeof(u64), 0,
     tp_la_show3);
  break;
 default:
  p = seq_open_tab(file, TPLA_SIZE, sizeof(u64), 0, tp_la_show);
 }
 if (!p)
  return -ENOMEM;

 t4_tp_read_la(adap, (u64 *)p->data, ((void*)0));
 return 0;
}
