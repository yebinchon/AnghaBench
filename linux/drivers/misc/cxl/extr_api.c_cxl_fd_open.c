
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int afu_open (struct inode*,struct file*) ;

int cxl_fd_open(struct inode *inode, struct file *file)
{
 return afu_open(inode, file);
}
