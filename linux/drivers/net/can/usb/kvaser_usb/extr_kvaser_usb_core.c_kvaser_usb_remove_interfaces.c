
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvaser_usb {int nchannels; TYPE_1__** nets; } ;
struct TYPE_2__ {int netdev; } ;


 int free_candev (int ) ;
 int kvaser_usb_unlink_all_urbs (struct kvaser_usb*) ;
 int unregister_candev (int ) ;

__attribute__((used)) static void kvaser_usb_remove_interfaces(struct kvaser_usb *dev)
{
 int i;

 for (i = 0; i < dev->nchannels; i++) {
  if (!dev->nets[i])
   continue;

  unregister_candev(dev->nets[i]->netdev);
 }

 kvaser_usb_unlink_all_urbs(dev);

 for (i = 0; i < dev->nchannels; i++) {
  if (!dev->nets[i])
   continue;

  free_candev(dev->nets[i]->netdev);
 }
}
