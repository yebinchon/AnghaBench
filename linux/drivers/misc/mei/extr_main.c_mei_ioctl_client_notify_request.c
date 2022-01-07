
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct mei_cl {int dummy; } ;
struct file {struct mei_cl* private_data; } ;


 int EINVAL ;
 scalar_t__ MEI_HBM_NOTIFICATION_START ;
 scalar_t__ MEI_HBM_NOTIFICATION_STOP ;
 int mei_cl_notify_request (struct mei_cl*,struct file const*,int ) ;

__attribute__((used)) static int mei_ioctl_client_notify_request(const struct file *file, u32 request)
{
 struct mei_cl *cl = file->private_data;

 if (request != MEI_HBM_NOTIFICATION_START &&
     request != MEI_HBM_NOTIFICATION_STOP)
  return -EINVAL;

 return mei_cl_notify_request(cl, file, (u8)request);
}
