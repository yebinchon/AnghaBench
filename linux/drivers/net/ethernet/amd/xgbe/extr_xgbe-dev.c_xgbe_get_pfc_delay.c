
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgbe_prv_data {TYPE_1__* pfc; } ;
struct TYPE_2__ {int delay; } ;


 scalar_t__ ETH_FCS_LEN ;
 scalar_t__ ETH_HLEN ;
 scalar_t__ XGMAC_ETH_PREAMBLE ;
 scalar_t__ XGMAC_PFC_DATA_LEN ;
 scalar_t__ XGMAC_PFC_DELAYS ;
 unsigned int xgbe_get_max_frame (struct xgbe_prv_data*) ;

__attribute__((used)) static unsigned int xgbe_get_pfc_delay(struct xgbe_prv_data *pdata)
{
 unsigned int delay;


 if (pdata->pfc->delay)
  return pdata->pfc->delay / 8;


 delay = xgbe_get_max_frame(pdata);
 delay += XGMAC_ETH_PREAMBLE;
 delay *= 2;


 delay += XGMAC_PFC_DATA_LEN;
 delay += ETH_HLEN + ETH_FCS_LEN;
 delay += XGMAC_ETH_PREAMBLE;


 delay += XGMAC_PFC_DELAYS;

 return delay;
}
