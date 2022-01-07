
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_private; } ;
struct file {int dummy; } ;


 int mt76x02_dfs_stat_read ;
 int single_open (struct file*,int ,int ) ;

__attribute__((used)) static int
mt76x02_dfs_stat_open(struct inode *inode, struct file *f)
{
 return single_open(f, mt76x02_dfs_stat_read, inode->i_private);
}
