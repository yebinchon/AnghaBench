
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_private; } ;
struct file {int dummy; } ;


 int single_open (struct file*,int ,int ) ;
 int wil_link_stats_global_debugfs_show ;

__attribute__((used)) static int
wil_link_stats_global_seq_open(struct inode *inode, struct file *file)
{
 return single_open(file, wil_link_stats_global_debugfs_show,
      inode->i_private);
}
