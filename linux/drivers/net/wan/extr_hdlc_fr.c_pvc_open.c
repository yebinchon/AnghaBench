
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int active; } ;
struct pvc_device {TYPE_2__ state; TYPE_4__* frad; int open_count; } ;
struct net_device {struct pvc_device* ml_priv; } ;
typedef int hdlc_device ;
struct TYPE_9__ {int flags; } ;
struct TYPE_6__ {scalar_t__ lmi; } ;
struct TYPE_8__ {int dce_changed; TYPE_1__ settings; } ;


 int EIO ;
 int IFF_UP ;
 scalar_t__ LMI_NONE ;
 int * dev_to_hdlc (TYPE_4__*) ;
 int netif_carrier_ok (TYPE_4__*) ;
 int pvc_carrier (int ,struct pvc_device*) ;
 TYPE_3__* state (int *) ;

__attribute__((used)) static int pvc_open(struct net_device *dev)
{
 struct pvc_device *pvc = dev->ml_priv;

 if ((pvc->frad->flags & IFF_UP) == 0)
  return -EIO;

 if (pvc->open_count++ == 0) {
  hdlc_device *hdlc = dev_to_hdlc(pvc->frad);
  if (state(hdlc)->settings.lmi == LMI_NONE)
   pvc->state.active = netif_carrier_ok(pvc->frad);

  pvc_carrier(pvc->state.active, pvc);
  state(hdlc)->dce_changed = 1;
 }
 return 0;
}
