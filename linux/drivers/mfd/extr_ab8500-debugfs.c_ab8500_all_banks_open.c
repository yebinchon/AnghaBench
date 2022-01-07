
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int size; int buf; } ;
struct inode {int i_private; } ;
struct file {scalar_t__ private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int ab8500_print_all_banks ;
 int kmalloc (int,int ) ;
 int single_open (struct file*,int ,int ) ;
 int single_release (struct inode*,struct file*) ;

__attribute__((used)) static int ab8500_all_banks_open(struct inode *inode, struct file *file)
{
 struct seq_file *s;
 int err;

 err = single_open(file, ab8500_print_all_banks, inode->i_private);
 if (!err) {

  s = (struct seq_file *)file->private_data;
  s->size = (PAGE_SIZE * 2);
  s->buf = kmalloc(s->size, GFP_KERNEL);
  if (!s->buf) {
   single_release(inode, file);
   err = -ENOMEM;
  }
 }
 return err;
}
