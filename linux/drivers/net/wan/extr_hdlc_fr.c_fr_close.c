
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvc_device {struct pvc_device* next; scalar_t__ ether; scalar_t__ main; } ;
struct net_device {int dummy; } ;
typedef int hdlc_device ;
struct TYPE_2__ {struct pvc_device* first_pvc; } ;


 int dev_close (scalar_t__) ;
 int * dev_to_hdlc (struct net_device*) ;
 TYPE_1__* state (int *) ;

__attribute__((used)) static void fr_close(struct net_device *dev)
{
 hdlc_device *hdlc = dev_to_hdlc(dev);
 struct pvc_device *pvc = state(hdlc)->first_pvc;

 while (pvc) {
  if (pvc->main)
   dev_close(pvc->main);
  if (pvc->ether)
   dev_close(pvc->ether);
  pvc = pvc->next;
 }
}
