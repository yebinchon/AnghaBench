
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int dummy; } ;
struct mei_cl {int wait; int ev_wait; int tx_wait; int rx_wait; struct mei_device* dev; } ;


 int cl_dbg (struct mei_device*,struct mei_cl*,char*) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void mei_cl_wake_all(struct mei_cl *cl)
{
 struct mei_device *dev = cl->dev;


 if (waitqueue_active(&cl->rx_wait)) {
  cl_dbg(dev, cl, "Waking up reading client!\n");
  wake_up_interruptible(&cl->rx_wait);
 }

 if (waitqueue_active(&cl->tx_wait)) {
  cl_dbg(dev, cl, "Waking up writing client!\n");
  wake_up_interruptible(&cl->tx_wait);
 }

 if (waitqueue_active(&cl->ev_wait)) {
  cl_dbg(dev, cl, "Waking up waiting for event clients!\n");
  wake_up_interruptible(&cl->ev_wait);
 }

 if (waitqueue_active(&cl->wait)) {
  cl_dbg(dev, cl, "Waking up ctrl write clients!\n");
  wake_up(&cl->wait);
 }
}
