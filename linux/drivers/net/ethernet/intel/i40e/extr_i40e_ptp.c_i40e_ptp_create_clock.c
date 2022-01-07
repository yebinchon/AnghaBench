
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int tx_type; int rx_filter; } ;
struct TYPE_6__ {int max_adj; int enable; int settime64; int gettimex64; int adjtime; int adjfreq; scalar_t__ pps; scalar_t__ n_ext_ts; int owner; int name; } ;
struct i40e_pf {int ptp_reset_start; int ptp_prev_hw_time; TYPE_2__ tstamp_config; int ptp_clock; TYPE_1__* pdev; TYPE_3__ ptp_caps; } ;
struct TYPE_4__ {int dev; } ;


 int HWTSTAMP_FILTER_NONE ;
 int HWTSTAMP_TX_OFF ;
 scalar_t__ IS_ERR (int ) ;
 int IS_ERR_OR_NULL (int ) ;
 long PTR_ERR (int ) ;
 int THIS_MODULE ;
 int i40e_driver_name ;
 int i40e_ptp_adjfreq ;
 int i40e_ptp_adjtime ;
 int i40e_ptp_feature_enable ;
 int i40e_ptp_gettimex ;
 int i40e_ptp_settime ;
 int ktime_get () ;
 int ktime_get_real_ts64 (int *) ;
 int ptp_clock_register (TYPE_3__*,int *) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static long i40e_ptp_create_clock(struct i40e_pf *pf)
{

 if (!IS_ERR_OR_NULL(pf->ptp_clock))
  return 0;

 strlcpy(pf->ptp_caps.name, i40e_driver_name,
  sizeof(pf->ptp_caps.name) - 1);
 pf->ptp_caps.owner = THIS_MODULE;
 pf->ptp_caps.max_adj = 999999999;
 pf->ptp_caps.n_ext_ts = 0;
 pf->ptp_caps.pps = 0;
 pf->ptp_caps.adjfreq = i40e_ptp_adjfreq;
 pf->ptp_caps.adjtime = i40e_ptp_adjtime;
 pf->ptp_caps.gettimex64 = i40e_ptp_gettimex;
 pf->ptp_caps.settime64 = i40e_ptp_settime;
 pf->ptp_caps.enable = i40e_ptp_feature_enable;


 pf->ptp_clock = ptp_clock_register(&pf->ptp_caps, &pf->pdev->dev);
 if (IS_ERR(pf->ptp_clock))
  return PTR_ERR(pf->ptp_clock);





 pf->tstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
 pf->tstamp_config.tx_type = HWTSTAMP_TX_OFF;


 ktime_get_real_ts64(&pf->ptp_prev_hw_time);
 pf->ptp_reset_start = ktime_get();

 return 0;
}
