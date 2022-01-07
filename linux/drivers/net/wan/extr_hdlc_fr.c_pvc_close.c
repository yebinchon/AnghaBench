
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ active; } ;
struct pvc_device {scalar_t__ open_count; TYPE_2__ state; int frad; } ;
struct net_device {struct pvc_device* ml_priv; } ;
typedef int hdlc_device ;
struct TYPE_4__ {scalar_t__ lmi; scalar_t__ dce; } ;
struct TYPE_6__ {int dce_changed; TYPE_1__ settings; } ;


 scalar_t__ LMI_NONE ;
 int * dev_to_hdlc (int ) ;
 TYPE_3__* state (int *) ;

__attribute__((used)) static int pvc_close(struct net_device *dev)
{
 struct pvc_device *pvc = dev->ml_priv;

 if (--pvc->open_count == 0) {
  hdlc_device *hdlc = dev_to_hdlc(pvc->frad);
  if (state(hdlc)->settings.lmi == LMI_NONE)
   pvc->state.active = 0;

  if (state(hdlc)->settings.dce) {
   state(hdlc)->dce_changed = 1;
   pvc->state.active = 0;
  }
 }
 return 0;
}
