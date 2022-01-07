
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {scalar_t__ type; int flags; } ;
struct mtd_file_info {struct mtd_info* mtd; } ;
struct inode {int dummy; } ;
struct file {int f_mode; struct mtd_file_info* private_data; } ;


 int EACCES ;
 int ENODEV ;
 int ENOMEM ;
 int FMODE_WRITE ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct mtd_info*) ;
 scalar_t__ MTD_ABSENT ;
 int MTD_WRITEABLE ;
 int PTR_ERR (struct mtd_info*) ;
 struct mtd_info* get_mtd_device (int *,int) ;
 int iminor (struct inode*) ;
 struct mtd_file_info* kzalloc (int,int ) ;
 int mtd_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*) ;
 int put_mtd_device (struct mtd_info*) ;

__attribute__((used)) static int mtdchar_open(struct inode *inode, struct file *file)
{
 int minor = iminor(inode);
 int devnum = minor >> 1;
 int ret = 0;
 struct mtd_info *mtd;
 struct mtd_file_info *mfi;

 pr_debug("MTD_open\n");


 if ((file->f_mode & FMODE_WRITE) && (minor & 1))
  return -EACCES;

 mutex_lock(&mtd_mutex);
 mtd = get_mtd_device(((void*)0), devnum);

 if (IS_ERR(mtd)) {
  ret = PTR_ERR(mtd);
  goto out;
 }

 if (mtd->type == MTD_ABSENT) {
  ret = -ENODEV;
  goto out1;
 }


 if ((file->f_mode & FMODE_WRITE) && !(mtd->flags & MTD_WRITEABLE)) {
  ret = -EACCES;
  goto out1;
 }

 mfi = kzalloc(sizeof(*mfi), GFP_KERNEL);
 if (!mfi) {
  ret = -ENOMEM;
  goto out1;
 }
 mfi->mtd = mtd;
 file->private_data = mfi;
 mutex_unlock(&mtd_mutex);
 return 0;

out1:
 put_mtd_device(mtd);
out:
 mutex_unlock(&mtd_mutex);
 return ret;
}
