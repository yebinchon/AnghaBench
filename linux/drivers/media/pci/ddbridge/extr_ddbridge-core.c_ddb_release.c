
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct ddb* private_data; } ;
struct ddb {int ddb_dev_users; } ;



__attribute__((used)) static int ddb_release(struct inode *inode, struct file *file)
{
 struct ddb *dev = file->private_data;

 dev->ddb_dev_users--;
 return 0;
}
