
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emac_adapter {int reset_lock; } ;


 int emac_mac_down (struct emac_adapter*) ;
 int emac_mac_up (struct emac_adapter*) ;
 int emac_sgmii_reset (struct emac_adapter*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int emac_reinit_locked(struct emac_adapter *adpt)
{
 int ret;

 mutex_lock(&adpt->reset_lock);

 emac_mac_down(adpt);
 emac_sgmii_reset(adpt);
 ret = emac_mac_up(adpt);

 mutex_unlock(&adpt->reset_lock);

 return ret;
}
