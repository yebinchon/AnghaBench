
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_cl {int ev_async; } ;
struct file {struct mei_cl* private_data; } ;


 int ENODEV ;
 int fasync_helper (int,struct file*,int,int *) ;
 int mei_cl_is_connected (struct mei_cl*) ;

__attribute__((used)) static int mei_fasync(int fd, struct file *file, int band)
{

 struct mei_cl *cl = file->private_data;

 if (!mei_cl_is_connected(cl))
  return -ENODEV;

 return fasync_helper(fd, file, band, &cl->ev_async);
}
