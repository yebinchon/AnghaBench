
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
struct inode {int i_private; } ;
struct file {struct seq_file* private_data; } ;


 int interfaces_seq_ops ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int interfaces_open(struct inode *inode, struct file *file)
{
 int res = seq_open(file, &interfaces_seq_ops);

 if (res == 0) {
  struct seq_file *seq = file->private_data;
  seq->private = inode->i_private;
 }
 return res;
}
