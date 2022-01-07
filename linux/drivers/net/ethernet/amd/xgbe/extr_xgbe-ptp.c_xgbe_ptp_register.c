
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int rx_filter; int tx_type; } ;
struct cyclecounter {int mult; scalar_t__ shift; int mask; int read; } ;
struct ptp_clock_info {int enable; int settime64; int gettime64; int adjtime; int adjfreq; int max_adj; int owner; int name; } ;
struct xgbe_prv_data {TYPE_1__ tstamp_config; struct cyclecounter tstamp_cc; int tstamp_tc; int ptpclk_rate; int tstamp_addend; struct ptp_clock* ptp_clock; int dev; int netdev; struct ptp_clock_info ptp_clock_info; } ;
struct ptp_clock {int dummy; } ;


 int CLOCKSOURCE_MASK (int) ;
 int HWTSTAMP_FILTER_NONE ;
 int HWTSTAMP_TX_OFF ;
 scalar_t__ IS_ERR (struct ptp_clock*) ;
 int MAC_TSCR ;
 int THIS_MODULE ;
 int XGMAC_IOWRITE (struct xgbe_prv_data*,int ,int ) ;
 int dev_err (int ,char*) ;
 int div_u64 (int,int ) ;
 int ktime_get_real () ;
 int ktime_to_ns (int ) ;
 char* netdev_name (int ) ;
 struct ptp_clock* ptp_clock_register (struct ptp_clock_info*,int ) ;
 int snprintf (int ,int,char*,char*) ;
 int timecounter_init (int *,struct cyclecounter*,int ) ;
 int xgbe_adjfreq ;
 int xgbe_adjtime ;
 int xgbe_cc_read ;
 int xgbe_enable ;
 int xgbe_gettime ;
 int xgbe_settime ;

void xgbe_ptp_register(struct xgbe_prv_data *pdata)
{
 struct ptp_clock_info *info = &pdata->ptp_clock_info;
 struct ptp_clock *clock;
 struct cyclecounter *cc = &pdata->tstamp_cc;
 u64 dividend;

 snprintf(info->name, sizeof(info->name), "%s",
   netdev_name(pdata->netdev));
 info->owner = THIS_MODULE;
 info->max_adj = pdata->ptpclk_rate;
 info->adjfreq = xgbe_adjfreq;
 info->adjtime = xgbe_adjtime;
 info->gettime64 = xgbe_gettime;
 info->settime64 = xgbe_settime;
 info->enable = xgbe_enable;

 clock = ptp_clock_register(info, pdata->dev);
 if (IS_ERR(clock)) {
  dev_err(pdata->dev, "ptp_clock_register failed\n");
  return;
 }

 pdata->ptp_clock = clock;





 dividend = 50000000;
 dividend <<= 32;
 pdata->tstamp_addend = div_u64(dividend, pdata->ptpclk_rate);


 cc->read = xgbe_cc_read;
 cc->mask = CLOCKSOURCE_MASK(64);
 cc->mult = 1;
 cc->shift = 0;

 timecounter_init(&pdata->tstamp_tc, &pdata->tstamp_cc,
    ktime_to_ns(ktime_get_real()));


 XGMAC_IOWRITE(pdata, MAC_TSCR, 0);
 pdata->tstamp_config.tx_type = HWTSTAMP_TX_OFF;
 pdata->tstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
}
