
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int private_data; } ;


 int vfree (int ) ;

__attribute__((used)) static int ath9k_debugfs_release_buf(struct inode *inode, struct file *file)
{
 vfree(file->private_data);
 return 0;
}
