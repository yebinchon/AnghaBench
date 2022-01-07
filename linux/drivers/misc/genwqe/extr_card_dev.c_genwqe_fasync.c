
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genwqe_file {int async_queue; } ;
struct file {scalar_t__ private_data; } ;


 int fasync_helper (int,struct file*,int,int *) ;

__attribute__((used)) static int genwqe_fasync(int fd, struct file *filp, int mode)
{
 struct genwqe_file *cdev = (struct genwqe_file *)filp->private_data;

 return fasync_helper(fd, filp, mode, &cdev->async_queue);
}
