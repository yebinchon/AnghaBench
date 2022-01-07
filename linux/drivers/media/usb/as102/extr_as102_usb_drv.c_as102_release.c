
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct as102_dev_t* private_data; } ;
struct as102_dev_t {int kref; } ;


 int as102_usb_release ;
 int kref_put (int *,int ) ;

__attribute__((used)) static int as102_release(struct inode *inode, struct file *file)
{
 struct as102_dev_t *dev = ((void*)0);

 dev = file->private_data;
 if (dev != ((void*)0)) {

  kref_put(&dev->kref, as102_usb_release);
 }

 return 0;
}
