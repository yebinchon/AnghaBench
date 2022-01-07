
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_request {int dummy; } ;
struct file {struct media_request* private_data; } ;


 long ENOIOCTLCMD ;


 long media_request_ioctl_queue (struct media_request*) ;
 long media_request_ioctl_reinit (struct media_request*) ;

__attribute__((used)) static long media_request_ioctl(struct file *filp, unsigned int cmd,
    unsigned long arg)
{
 struct media_request *req = filp->private_data;

 switch (cmd) {
 case 129:
  return media_request_ioctl_queue(req);
 case 128:
  return media_request_ioctl_reinit(req);
 default:
  return -ENOIOCTLCMD;
 }
}
