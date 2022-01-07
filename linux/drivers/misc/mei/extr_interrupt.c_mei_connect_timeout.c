
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {scalar_t__ hbm_f_dot_supported; } ;
struct mei_cl {scalar_t__ state; int wait; struct mei_device* dev; } ;


 scalar_t__ MEI_FILE_CONNECTING ;
 scalar_t__ MEI_FILE_DISCONNECT_REQUIRED ;
 int mei_reset (struct mei_device*) ;
 int wake_up (int *) ;

__attribute__((used)) static void mei_connect_timeout(struct mei_cl *cl)
{
 struct mei_device *dev = cl->dev;

 if (cl->state == MEI_FILE_CONNECTING) {
  if (dev->hbm_f_dot_supported) {
   cl->state = MEI_FILE_DISCONNECT_REQUIRED;
   wake_up(&cl->wait);
   return;
  }
 }
 mei_reset(dev);
}
