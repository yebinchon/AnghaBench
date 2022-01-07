
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int tstamp_cc; int tstamp_tc; int tstamp_addend; } ;


 int MAC_SSIR ;
 int MAC_TSCR ;
 int SNSINC ;
 int SSINC ;
 int TSCFUPDT ;
 int TSCTRLSSR ;
 int TSENA ;
 int TXTSSTSM ;
 int XGBE_TSTAMP_SNSINC ;
 int XGBE_TSTAMP_SSINC ;
 int XGMAC_GET_BITS (unsigned int,int ,int ) ;
 int XGMAC_IOWRITE (struct xgbe_prv_data*,int ,unsigned int) ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int ) ;
 int XGMAC_SET_BITS (unsigned int,int ,int ,int) ;
 int ktime_get_real () ;
 int ktime_to_ns (int ) ;
 int timecounter_init (int *,int *,int ) ;
 int xgbe_set_tstamp_time (struct xgbe_prv_data*,int ,int ) ;
 int xgbe_update_tstamp_addend (struct xgbe_prv_data*,int ) ;

__attribute__((used)) static int xgbe_config_tstamp(struct xgbe_prv_data *pdata,
         unsigned int mac_tscr)
{

 XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSCTRLSSR, 1);


 XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSCFUPDT, 1);


 XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TXTSSTSM, 1);

 XGMAC_IOWRITE(pdata, MAC_TSCR, mac_tscr);


 if (!XGMAC_GET_BITS(mac_tscr, MAC_TSCR, TSENA))
  return 0;


 XGMAC_IOWRITE_BITS(pdata, MAC_SSIR, SSINC, XGBE_TSTAMP_SSINC);
 XGMAC_IOWRITE_BITS(pdata, MAC_SSIR, SNSINC, XGBE_TSTAMP_SNSINC);
 xgbe_update_tstamp_addend(pdata, pdata->tstamp_addend);
 xgbe_set_tstamp_time(pdata, 0, 0);


 timecounter_init(&pdata->tstamp_tc, &pdata->tstamp_cc,
    ktime_to_ns(ktime_get_real()));

 return 0;
}
