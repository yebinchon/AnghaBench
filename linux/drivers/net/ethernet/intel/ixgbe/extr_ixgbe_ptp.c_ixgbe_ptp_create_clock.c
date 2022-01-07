
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct net_device {char* name; } ;
struct TYPE_9__ {int tx_type; int rx_filter; } ;
struct TYPE_10__ {int max_adj; int pps; void* enable; void* settime64; void* gettimex64; void* adjtime; void* adjfreq; int n_per_out; int n_ext_ts; int n_alarm; void* owner; int name; } ;
struct TYPE_6__ {int type; } ;
struct TYPE_7__ {TYPE_1__ mac; } ;
struct ixgbe_adapter {TYPE_4__ tstamp_config; int * ptp_clock; TYPE_3__* pdev; TYPE_5__ ptp_caps; int * ptp_setup_sdp; TYPE_2__ hw; struct net_device* netdev; } ;
struct TYPE_8__ {int dev; } ;


 long EOPNOTSUPP ;
 int HWTSTAMP_FILTER_NONE ;
 int HWTSTAMP_TX_OFF ;
 scalar_t__ IS_ERR (int *) ;
 int IS_ERR_OR_NULL (int *) ;
 long PTR_ERR (int *) ;
 void* THIS_MODULE ;
 int e_dev_err (char*) ;
 int e_dev_info (char*,char*) ;





 void* ixgbe_ptp_adjfreq_82599 ;
 void* ixgbe_ptp_adjfreq_X550 ;
 void* ixgbe_ptp_adjtime ;
 void* ixgbe_ptp_feature_enable ;
 void* ixgbe_ptp_gettimex ;
 void* ixgbe_ptp_settime ;
 int * ixgbe_ptp_setup_sdp_X540 ;
 int * ixgbe_ptp_setup_sdp_X550 ;
 int * ptp_clock_register (TYPE_5__*,int *) ;
 int snprintf (int ,int,char*,char*) ;

__attribute__((used)) static long ixgbe_ptp_create_clock(struct ixgbe_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 long err;


 if (!IS_ERR_OR_NULL(adapter->ptp_clock))
  return 0;

 switch (adapter->hw.mac.type) {
 case 131:
  snprintf(adapter->ptp_caps.name,
    sizeof(adapter->ptp_caps.name),
    "%s", netdev->name);
  adapter->ptp_caps.owner = THIS_MODULE;
  adapter->ptp_caps.max_adj = 250000000;
  adapter->ptp_caps.n_alarm = 0;
  adapter->ptp_caps.n_ext_ts = 0;
  adapter->ptp_caps.n_per_out = 0;
  adapter->ptp_caps.pps = 1;
  adapter->ptp_caps.adjfreq = ixgbe_ptp_adjfreq_82599;
  adapter->ptp_caps.adjtime = ixgbe_ptp_adjtime;
  adapter->ptp_caps.gettimex64 = ixgbe_ptp_gettimex;
  adapter->ptp_caps.settime64 = ixgbe_ptp_settime;
  adapter->ptp_caps.enable = ixgbe_ptp_feature_enable;
  adapter->ptp_setup_sdp = ixgbe_ptp_setup_sdp_X540;
  break;
 case 132:
  snprintf(adapter->ptp_caps.name,
    sizeof(adapter->ptp_caps.name),
    "%s", netdev->name);
  adapter->ptp_caps.owner = THIS_MODULE;
  adapter->ptp_caps.max_adj = 250000000;
  adapter->ptp_caps.n_alarm = 0;
  adapter->ptp_caps.n_ext_ts = 0;
  adapter->ptp_caps.n_per_out = 0;
  adapter->ptp_caps.pps = 0;
  adapter->ptp_caps.adjfreq = ixgbe_ptp_adjfreq_82599;
  adapter->ptp_caps.adjtime = ixgbe_ptp_adjtime;
  adapter->ptp_caps.gettimex64 = ixgbe_ptp_gettimex;
  adapter->ptp_caps.settime64 = ixgbe_ptp_settime;
  adapter->ptp_caps.enable = ixgbe_ptp_feature_enable;
  break;
 case 130:
 case 129:
 case 128:
  snprintf(adapter->ptp_caps.name, 16, "%s", netdev->name);
  adapter->ptp_caps.owner = THIS_MODULE;
  adapter->ptp_caps.max_adj = 30000000;
  adapter->ptp_caps.n_alarm = 0;
  adapter->ptp_caps.n_ext_ts = 0;
  adapter->ptp_caps.n_per_out = 0;
  adapter->ptp_caps.pps = 1;
  adapter->ptp_caps.adjfreq = ixgbe_ptp_adjfreq_X550;
  adapter->ptp_caps.adjtime = ixgbe_ptp_adjtime;
  adapter->ptp_caps.gettimex64 = ixgbe_ptp_gettimex;
  adapter->ptp_caps.settime64 = ixgbe_ptp_settime;
  adapter->ptp_caps.enable = ixgbe_ptp_feature_enable;
  adapter->ptp_setup_sdp = ixgbe_ptp_setup_sdp_X550;
  break;
 default:
  adapter->ptp_clock = ((void*)0);
  adapter->ptp_setup_sdp = ((void*)0);
  return -EOPNOTSUPP;
 }

 adapter->ptp_clock = ptp_clock_register(&adapter->ptp_caps,
      &adapter->pdev->dev);
 if (IS_ERR(adapter->ptp_clock)) {
  err = PTR_ERR(adapter->ptp_clock);
  adapter->ptp_clock = ((void*)0);
  e_dev_err("ptp_clock_register failed\n");
  return err;
 } else if (adapter->ptp_clock)
  e_dev_info("registered PHC device on %s\n", netdev->name);





 adapter->tstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
 adapter->tstamp_config.tx_type = HWTSTAMP_TX_OFF;

 return 0;
}
