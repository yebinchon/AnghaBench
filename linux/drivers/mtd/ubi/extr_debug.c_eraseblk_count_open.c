
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
struct inode {scalar_t__ i_private; } ;
struct file {struct seq_file* private_data; } ;


 int ENODEV ;
 int eraseblk_count_seq_ops ;
 int seq_open (struct file*,int *) ;
 int ubi_get_device (unsigned long) ;

__attribute__((used)) static int eraseblk_count_open(struct inode *inode, struct file *f)
{
 struct seq_file *s;
 int err;

 err = seq_open(f, &eraseblk_count_seq_ops);
 if (err)
  return err;

 s = f->private_data;
 s->private = ubi_get_device((unsigned long)inode->i_private);

 if (!s->private)
  return -ENODEV;
 else
  return 0;
}
