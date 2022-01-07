
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ibmasmfs_heartbeat_data {int dummy; } ;
struct file {struct ibmasmfs_heartbeat_data* private_data; } ;


 int kfree (struct ibmasmfs_heartbeat_data*) ;

__attribute__((used)) static int r_heartbeat_file_close(struct inode *inode, struct file *file)
{
 struct ibmasmfs_heartbeat_data *rhbeat = file->private_data;

 kfree(rhbeat);
 return 0;
}
