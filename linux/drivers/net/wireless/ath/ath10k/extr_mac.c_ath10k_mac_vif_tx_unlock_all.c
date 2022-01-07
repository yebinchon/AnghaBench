
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_vif {int dummy; } ;


 int BITS_PER_LONG ;
 int ath10k_mac_vif_tx_unlock (struct ath10k_vif*,int) ;

__attribute__((used)) static void ath10k_mac_vif_tx_unlock_all(struct ath10k_vif *arvif)
{
 int i;

 for (i = 0; i < BITS_PER_LONG; i++)
  ath10k_mac_vif_tx_unlock(arvif, i);
}
