
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct bnad_debug_info* private_data; } ;
struct bnad_debug_info {int buffer_len; } ;
typedef int loff_t ;


 int EINVAL ;
 int fixed_size_llseek (struct file*,int ,int,int ) ;

__attribute__((used)) static loff_t
bnad_debugfs_lseek(struct file *file, loff_t offset, int orig)
{
 struct bnad_debug_info *debug = file->private_data;

 if (!debug)
  return -EINVAL;

 return fixed_size_llseek(file, offset, orig, debug->buffer_len);
}
