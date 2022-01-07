
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_cl {int dummy; } ;
struct file {int f_flags; struct mei_cl* private_data; } ;


 int O_NONBLOCK ;
 int mei_cl_notify_get (struct mei_cl*,int,int*) ;

__attribute__((used)) static int mei_ioctl_client_notify_get(const struct file *file, u32 *notify_get)
{
 struct mei_cl *cl = file->private_data;
 bool notify_ev;
 bool block = (file->f_flags & O_NONBLOCK) == 0;
 int rets;

 rets = mei_cl_notify_get(cl, block, &notify_ev);
 if (rets)
  return rets;

 *notify_get = notify_ev ? 1 : 0;
 return 0;
}
