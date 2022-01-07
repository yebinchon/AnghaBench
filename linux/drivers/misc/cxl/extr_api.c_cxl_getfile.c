
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct inode {void* private_data; } ;
struct file_operations {scalar_t__ owner; } ;
struct file {void* private_data; } ;
struct TYPE_5__ {int mnt_sb; } ;


 int ENOENT ;
 struct inode* ERR_CAST (struct inode*) ;
 struct inode* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int O_ACCMODE ;
 int O_NONBLOCK ;
 struct inode* alloc_anon_inode (int ) ;
 struct inode* alloc_file_pseudo (struct inode*,TYPE_1__*,char const*,int,struct file_operations const*) ;
 int cxl_fs_cnt ;
 int cxl_fs_type ;
 TYPE_1__* cxl_vfs_mount ;
 int iput (struct inode*) ;
 int module_put (scalar_t__) ;
 int pr_err (char*,int) ;
 int simple_pin_fs (int *,TYPE_1__**,int *) ;
 int simple_release_fs (TYPE_1__**,int *) ;
 int try_module_get (scalar_t__) ;

__attribute__((used)) static struct file *cxl_getfile(const char *name,
    const struct file_operations *fops,
    void *priv, int flags)
{
 struct file *file;
 struct inode *inode;
 int rc;



 if (fops->owner && !try_module_get(fops->owner))
  return ERR_PTR(-ENOENT);

 rc = simple_pin_fs(&cxl_fs_type, &cxl_vfs_mount, &cxl_fs_cnt);
 if (rc < 0) {
  pr_err("Cannot mount cxl pseudo filesystem: %d\n", rc);
  file = ERR_PTR(rc);
  goto err_module;
 }

 inode = alloc_anon_inode(cxl_vfs_mount->mnt_sb);
 if (IS_ERR(inode)) {
  file = ERR_CAST(inode);
  goto err_fs;
 }

 file = alloc_file_pseudo(inode, cxl_vfs_mount, name,
     flags & (O_ACCMODE | O_NONBLOCK), fops);
 if (IS_ERR(file))
  goto err_inode;

 file->private_data = priv;

 return file;

err_inode:
 iput(inode);
err_fs:
 simple_release_fs(&cxl_vfs_mount, &cxl_fs_cnt);
err_module:
 module_put(fops->owner);
 return file;
}
