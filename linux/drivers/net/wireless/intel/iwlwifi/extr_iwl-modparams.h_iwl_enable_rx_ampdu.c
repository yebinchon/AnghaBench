
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int disable_11n; } ;


 int IWL_DISABLE_HT_RXAGG ;
 TYPE_1__ iwlwifi_mod_params ;

__attribute__((used)) static inline bool iwl_enable_rx_ampdu(void)
{
 if (iwlwifi_mod_params.disable_11n & IWL_DISABLE_HT_RXAGG)
  return 0;
 return 1;
}
