
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvc_device {scalar_t__ ether; scalar_t__ main; struct pvc_device* next; } ;
struct net_device {int dummy; } ;
typedef int hdlc_device ;
struct TYPE_2__ {int dce_changed; scalar_t__ dce_pvc_count; struct pvc_device* first_pvc; } ;


 int * dev_to_hdlc (struct net_device*) ;
 int kfree (struct pvc_device*) ;
 TYPE_1__* state (int *) ;
 int unregister_netdevice (scalar_t__) ;

__attribute__((used)) static void fr_destroy(struct net_device *frad)
{
 hdlc_device *hdlc = dev_to_hdlc(frad);
 struct pvc_device *pvc = state(hdlc)->first_pvc;
 state(hdlc)->first_pvc = ((void*)0);
 state(hdlc)->dce_pvc_count = 0;
 state(hdlc)->dce_changed = 1;

 while (pvc) {
  struct pvc_device *next = pvc->next;

  if (pvc->main)
   unregister_netdevice(pvc->main);

  if (pvc->ether)
   unregister_netdevice(pvc->ether);

  kfree(pvc);
  pvc = next;
 }
}
