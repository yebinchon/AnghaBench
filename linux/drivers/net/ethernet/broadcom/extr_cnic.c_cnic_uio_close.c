
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_info {struct cnic_uio_dev* priv; } ;
struct inode {int dummy; } ;
struct cnic_uio_dev {int uio_dev; } ;



__attribute__((used)) static int cnic_uio_close(struct uio_info *uinfo, struct inode *inode)
{
 struct cnic_uio_dev *udev = uinfo->priv;

 udev->uio_dev = -1;
 return 0;
}
