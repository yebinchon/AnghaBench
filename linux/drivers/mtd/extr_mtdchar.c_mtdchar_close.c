
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;
struct mtd_file_info {struct mtd_info* mtd; } ;
struct inode {int dummy; } ;
struct file {int f_mode; struct mtd_file_info* private_data; } ;


 int FMODE_WRITE ;
 int kfree (struct mtd_file_info*) ;
 int mtd_sync (struct mtd_info*) ;
 int pr_debug (char*) ;
 int put_mtd_device (struct mtd_info*) ;

__attribute__((used)) static int mtdchar_close(struct inode *inode, struct file *file)
{
 struct mtd_file_info *mfi = file->private_data;
 struct mtd_info *mtd = mfi->mtd;

 pr_debug("MTD_close\n");


 if ((file->f_mode & FMODE_WRITE))
  mtd_sync(mtd);

 put_mtd_device(mtd);
 file->private_data = ((void*)0);
 kfree(mfi);

 return 0;
}
