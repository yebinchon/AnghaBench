
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 scalar_t__ IS_ERR_OR_NULL (struct dentry*) ;
 int KERN_INFO ;
 struct dentry* debugfs_create_dir (char*,int ) ;
 int usb_debug_root ;
 struct dentry* uvc_debugfs_root_dir ;
 int uvc_printk (int ,char*) ;

void uvc_debugfs_init(void)
{
 struct dentry *dir;

 dir = debugfs_create_dir("uvcvideo", usb_debug_root);
 if (IS_ERR_OR_NULL(dir)) {
  uvc_printk(KERN_INFO, "Unable to create debugfs directory\n");
  return;
 }

 uvc_debugfs_root_dir = dir;
}
