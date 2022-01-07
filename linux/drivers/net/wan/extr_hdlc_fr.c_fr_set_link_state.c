
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int exist; int active; scalar_t__ bandwidth; scalar_t__ new; } ;
struct pvc_device {struct pvc_device* next; TYPE_2__ state; } ;
struct net_device {int dummy; } ;
typedef int hdlc_device ;
struct TYPE_4__ {scalar_t__ lmi; int dce; } ;
struct TYPE_6__ {int reliable; int dce_changed; TYPE_1__ settings; scalar_t__ n391cnt; struct pvc_device* first_pvc; } ;


 scalar_t__ LMI_NONE ;
 int * dev_to_hdlc (struct net_device*) ;
 int netif_dormant_off (struct net_device*) ;
 int netif_dormant_on (struct net_device*) ;
 int pvc_carrier (int,struct pvc_device*) ;
 TYPE_3__* state (int *) ;

__attribute__((used)) static void fr_set_link_state(int reliable, struct net_device *dev)
{
 hdlc_device *hdlc = dev_to_hdlc(dev);
 struct pvc_device *pvc = state(hdlc)->first_pvc;

 state(hdlc)->reliable = reliable;
 if (reliable) {
  netif_dormant_off(dev);
  state(hdlc)->n391cnt = 0;
  state(hdlc)->dce_changed = 1;

  if (state(hdlc)->settings.lmi == LMI_NONE) {
   while (pvc) {
    pvc_carrier(1, pvc);
    pvc->state.exist = pvc->state.active = 1;
    pvc->state.new = 0;
    pvc = pvc->next;
   }
  }
 } else {
  netif_dormant_on(dev);
  while (pvc) {
   pvc_carrier(0, pvc);
   pvc->state.exist = pvc->state.active = 0;
   pvc->state.new = 0;
   if (!state(hdlc)->settings.dce)
    pvc->state.bandwidth = 0;
   pvc = pvc->next;
  }
 }
}
