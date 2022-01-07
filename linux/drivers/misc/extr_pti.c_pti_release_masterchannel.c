
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pti_masterchannel {int master; int channel; } ;
struct TYPE_2__ {int* ia_app; int* ia_os; int* ia_modem; } ;


 int APP_BASE_ID ;
 int OS_BASE_ID ;
 int alloclock ;
 TYPE_1__* drv_data ;
 int kfree (struct pti_masterchannel*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void pti_release_masterchannel(struct pti_masterchannel *mc)
{
 u8 master, channel, i;

 mutex_lock(&alloclock);

 if (mc) {
  master = mc->master;
  channel = mc->channel;

  if (master == APP_BASE_ID) {
   i = channel >> 3;
   drv_data->ia_app[i] &= ~(0x80>>(channel & 0x7));
  } else if (master == OS_BASE_ID) {
   i = channel >> 3;
   drv_data->ia_os[i] &= ~(0x80>>(channel & 0x7));
  } else {
   i = channel >> 3;
   drv_data->ia_modem[i] &= ~(0x80>>(channel & 0x7));
  }

  kfree(mc);
 }

 mutex_unlock(&alloclock);
}
