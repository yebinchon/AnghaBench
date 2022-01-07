
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int __afu_open (struct inode*,struct file*,int) ;

int afu_open(struct inode *inode, struct file *file)
{
 return __afu_open(inode, file, 0);
}
