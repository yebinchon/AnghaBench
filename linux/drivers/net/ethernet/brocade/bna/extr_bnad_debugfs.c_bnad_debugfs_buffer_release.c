
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct bnad_debug_info* private_data; } ;
struct bnad_debug_info {struct bnad_debug_info* debug_buffer; } ;


 int kfree (struct bnad_debug_info*) ;

__attribute__((used)) static int
bnad_debugfs_buffer_release(struct inode *inode, struct file *file)
{
 struct bnad_debug_info *debug = file->private_data;

 if (!debug)
  return 0;

 kfree(debug->debug_buffer);

 file->private_data = ((void*)0);
 kfree(debug);
 debug = ((void*)0);
 return 0;
}
