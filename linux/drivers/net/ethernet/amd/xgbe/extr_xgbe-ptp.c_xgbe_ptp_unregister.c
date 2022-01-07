
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {scalar_t__ ptp_clock; } ;


 int ptp_clock_unregister (scalar_t__) ;

void xgbe_ptp_unregister(struct xgbe_prv_data *pdata)
{
 if (pdata->ptp_clock)
  ptp_clock_unregister(pdata->ptp_clock);
}
