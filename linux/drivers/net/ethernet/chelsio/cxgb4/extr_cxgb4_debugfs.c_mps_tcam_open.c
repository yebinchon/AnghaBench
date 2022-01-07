
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
struct inode {int i_private; } ;
struct file {struct seq_file* private_data; } ;


 int mps_tcam_seq_ops ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int mps_tcam_open(struct inode *inode, struct file *file)
{
 int res = seq_open(file, &mps_tcam_seq_ops);

 if (!res) {
  struct seq_file *seq = file->private_data;

  seq->private = inode->i_private;
 }
 return res;
}
