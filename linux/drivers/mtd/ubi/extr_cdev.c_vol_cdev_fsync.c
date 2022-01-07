
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubi_volume_desc {TYPE_1__* vol; } ;
struct ubi_device {int ubi_num; } ;
struct inode {int dummy; } ;
struct file {struct ubi_volume_desc* private_data; } ;
typedef int loff_t ;
struct TYPE_2__ {struct ubi_device* ubi; } ;


 struct inode* file_inode (struct file*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int ubi_sync (int ) ;

__attribute__((used)) static int vol_cdev_fsync(struct file *file, loff_t start, loff_t end,
     int datasync)
{
 struct ubi_volume_desc *desc = file->private_data;
 struct ubi_device *ubi = desc->vol->ubi;
 struct inode *inode = file_inode(file);
 int err;
 inode_lock(inode);
 err = ubi_sync(ubi->ubi_num);
 inode_unlock(inode);
 return err;
}
