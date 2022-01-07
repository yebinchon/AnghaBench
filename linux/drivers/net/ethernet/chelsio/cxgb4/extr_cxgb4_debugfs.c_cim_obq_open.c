
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_tab {scalar_t__ data; } ;
struct inode {unsigned int i_private; } ;
struct file {int dummy; } ;
struct adapter {int dummy; } ;


 int CIM_OBQ_SIZE ;
 int ENOMEM ;
 int cimq_show ;
 struct seq_tab* seq_open_tab (struct file*,int,int,int ,int ) ;
 int seq_release_private (struct inode*,struct file*) ;
 int seq_tab_trim (struct seq_tab*,int) ;
 int t4_read_cim_obq (struct adapter*,unsigned int,int *,int) ;

__attribute__((used)) static int cim_obq_open(struct inode *inode, struct file *file)
{
 int ret;
 struct seq_tab *p;
 unsigned int qid = (uintptr_t)inode->i_private & 7;
 struct adapter *adap = inode->i_private - qid;

 p = seq_open_tab(file, 6 * CIM_OBQ_SIZE, 4 * sizeof(u32), 0, cimq_show);
 if (!p)
  return -ENOMEM;

 ret = t4_read_cim_obq(adap, qid, (u32 *)p->data, 6 * CIM_OBQ_SIZE * 4);
 if (ret < 0) {
  seq_release_private(inode, file);
 } else {
  seq_tab_trim(p, ret / 4);
  ret = 0;
 }
 return ret;
}
