
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ptp_pin_desc {int index; int func; int name; } ;
struct net_device {int dev_addr; int name; } ;
struct TYPE_10__ {int max_adj; int pps; int n_pins; int verify; void* enable; void* settime64; int gettimex64; void* adjtime; void* adjfine; struct ptp_pin_desc* pin_config; int n_per_out; int n_ext_ts; void* owner; int name; int adjfreq; } ;
struct TYPE_6__ {int tx_type; int rx_filter; } ;
struct TYPE_9__ {int mult; int shift; void* mask; int read; } ;
struct TYPE_8__ {int type; } ;
struct e1000_hw {TYPE_3__ mac; } ;
struct igb_adapter {int ptp_flags; struct net_device* netdev; TYPE_2__* pdev; int * ptp_clock; TYPE_5__ ptp_caps; TYPE_1__ tstamp_config; int ptp_overflow_work; int ptp_tx_work; int tmreg_lock; struct ptp_pin_desc* sdp_config; TYPE_4__ cc; struct e1000_hw hw; } ;
struct TYPE_7__ {int dev; } ;


 void* CYCLECOUNTER_MASK (int) ;
 int HWTSTAMP_FILTER_NONE ;
 int HWTSTAMP_TX_OFF ;
 int IGB_82576_TSYNC_SHIFT ;
 int IGB_NBITS_82580 ;
 int IGB_N_EXTTS ;
 int IGB_N_PEROUT ;
 int IGB_N_SDP ;
 int IGB_PTP_ENABLED ;
 int IGB_PTP_OVERFLOW_CHECK ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int *) ;
 int PTP_PF_NONE ;
 void* THIS_MODULE ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int ) ;






 void* igb_ptp_adjfine_82580 ;
 int igb_ptp_adjfreq_82576 ;
 void* igb_ptp_adjtime_82576 ;
 void* igb_ptp_adjtime_i210 ;
 void* igb_ptp_feature_enable ;
 void* igb_ptp_feature_enable_i210 ;
 int igb_ptp_gettimex_82576 ;
 int igb_ptp_gettimex_82580 ;
 int igb_ptp_gettimex_i210 ;
 int igb_ptp_overflow_check ;
 int igb_ptp_read_82576 ;
 int igb_ptp_read_82580 ;
 int igb_ptp_reset (struct igb_adapter*) ;
 void* igb_ptp_settime_82576 ;
 void* igb_ptp_settime_i210 ;
 int igb_ptp_tx_work ;
 int igb_ptp_verify_pin ;
 int * ptp_clock_register (TYPE_5__*,int *) ;
 int snprintf (int ,int,char*,int) ;
 int spin_lock_init (int *) ;

void igb_ptp_init(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 struct net_device *netdev = adapter->netdev;
 int i;

 switch (hw->mac.type) {
 case 133:
  snprintf(adapter->ptp_caps.name, 16, "%pm", netdev->dev_addr);
  adapter->ptp_caps.owner = THIS_MODULE;
  adapter->ptp_caps.max_adj = 999999881;
  adapter->ptp_caps.n_ext_ts = 0;
  adapter->ptp_caps.pps = 0;
  adapter->ptp_caps.adjfreq = igb_ptp_adjfreq_82576;
  adapter->ptp_caps.adjtime = igb_ptp_adjtime_82576;
  adapter->ptp_caps.gettimex64 = igb_ptp_gettimex_82576;
  adapter->ptp_caps.settime64 = igb_ptp_settime_82576;
  adapter->ptp_caps.enable = igb_ptp_feature_enable;
  adapter->cc.read = igb_ptp_read_82576;
  adapter->cc.mask = CYCLECOUNTER_MASK(64);
  adapter->cc.mult = 1;
  adapter->cc.shift = IGB_82576_TSYNC_SHIFT;
  adapter->ptp_flags |= IGB_PTP_OVERFLOW_CHECK;
  break;
 case 132:
 case 128:
 case 129:
  snprintf(adapter->ptp_caps.name, 16, "%pm", netdev->dev_addr);
  adapter->ptp_caps.owner = THIS_MODULE;
  adapter->ptp_caps.max_adj = 62499999;
  adapter->ptp_caps.n_ext_ts = 0;
  adapter->ptp_caps.pps = 0;
  adapter->ptp_caps.adjfine = igb_ptp_adjfine_82580;
  adapter->ptp_caps.adjtime = igb_ptp_adjtime_82576;
  adapter->ptp_caps.gettimex64 = igb_ptp_gettimex_82580;
  adapter->ptp_caps.settime64 = igb_ptp_settime_82576;
  adapter->ptp_caps.enable = igb_ptp_feature_enable;
  adapter->cc.read = igb_ptp_read_82580;
  adapter->cc.mask = CYCLECOUNTER_MASK(IGB_NBITS_82580);
  adapter->cc.mult = 1;
  adapter->cc.shift = 0;
  adapter->ptp_flags |= IGB_PTP_OVERFLOW_CHECK;
  break;
 case 131:
 case 130:
  for (i = 0; i < IGB_N_SDP; i++) {
   struct ptp_pin_desc *ppd = &adapter->sdp_config[i];

   snprintf(ppd->name, sizeof(ppd->name), "SDP%d", i);
   ppd->index = i;
   ppd->func = PTP_PF_NONE;
  }
  snprintf(adapter->ptp_caps.name, 16, "%pm", netdev->dev_addr);
  adapter->ptp_caps.owner = THIS_MODULE;
  adapter->ptp_caps.max_adj = 62499999;
  adapter->ptp_caps.n_ext_ts = IGB_N_EXTTS;
  adapter->ptp_caps.n_per_out = IGB_N_PEROUT;
  adapter->ptp_caps.n_pins = IGB_N_SDP;
  adapter->ptp_caps.pps = 1;
  adapter->ptp_caps.pin_config = adapter->sdp_config;
  adapter->ptp_caps.adjfine = igb_ptp_adjfine_82580;
  adapter->ptp_caps.adjtime = igb_ptp_adjtime_i210;
  adapter->ptp_caps.gettimex64 = igb_ptp_gettimex_i210;
  adapter->ptp_caps.settime64 = igb_ptp_settime_i210;
  adapter->ptp_caps.enable = igb_ptp_feature_enable_i210;
  adapter->ptp_caps.verify = igb_ptp_verify_pin;
  break;
 default:
  adapter->ptp_clock = ((void*)0);
  return;
 }

 spin_lock_init(&adapter->tmreg_lock);
 INIT_WORK(&adapter->ptp_tx_work, igb_ptp_tx_work);

 if (adapter->ptp_flags & IGB_PTP_OVERFLOW_CHECK)
  INIT_DELAYED_WORK(&adapter->ptp_overflow_work,
      igb_ptp_overflow_check);

 adapter->tstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
 adapter->tstamp_config.tx_type = HWTSTAMP_TX_OFF;

 igb_ptp_reset(adapter);

 adapter->ptp_clock = ptp_clock_register(&adapter->ptp_caps,
      &adapter->pdev->dev);
 if (IS_ERR(adapter->ptp_clock)) {
  adapter->ptp_clock = ((void*)0);
  dev_err(&adapter->pdev->dev, "ptp_clock_register failed\n");
 } else if (adapter->ptp_clock) {
  dev_info(&adapter->pdev->dev, "added PHC on %s\n",
    adapter->netdev->name);
  adapter->ptp_flags |= IGB_PTP_ENABLED;
 }
}
