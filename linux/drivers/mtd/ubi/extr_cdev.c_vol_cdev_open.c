
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_volume_desc {int dummy; } ;
struct inode {int dummy; } ;
struct file {int f_mode; struct ubi_volume_desc* private_data; } ;


 int FMODE_WRITE ;
 scalar_t__ IS_ERR (struct ubi_volume_desc*) ;
 int PTR_ERR (struct ubi_volume_desc*) ;
 int UBI_READONLY ;
 int UBI_READWRITE ;
 int dbg_gen (char*,int,int,int) ;
 int imajor (struct inode*) ;
 int iminor (struct inode*) ;
 int ubi_major2num (int ) ;
 struct ubi_volume_desc* ubi_open_volume (int,int,int) ;

__attribute__((used)) static int vol_cdev_open(struct inode *inode, struct file *file)
{
 struct ubi_volume_desc *desc;
 int vol_id = iminor(inode) - 1, mode, ubi_num;

 ubi_num = ubi_major2num(imajor(inode));
 if (ubi_num < 0)
  return ubi_num;

 if (file->f_mode & FMODE_WRITE)
  mode = UBI_READWRITE;
 else
  mode = UBI_READONLY;

 dbg_gen("open device %d, volume %d, mode %d",
  ubi_num, vol_id, mode);

 desc = ubi_open_volume(ubi_num, vol_id, mode);
 if (IS_ERR(desc))
  return PTR_ERR(desc);

 file->private_data = desc;
 return 0;
}
