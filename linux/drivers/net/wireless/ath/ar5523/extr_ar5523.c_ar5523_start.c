
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int val ;
struct ieee80211_hw {struct ar5523* priv; } ;
struct ar5523 {int mutex; int rx_refill_work; int wq; int flags; TYPE_2__* hw; } ;
typedef int __be32 ;
struct TYPE_4__ {TYPE_1__* wiphy; } ;
struct TYPE_3__ {int perm_addr; } ;


 int AR5523_CMD_FLAG_MAGIC ;
 int AR5523_HW_UP ;
 int CFG_ABOLT ;
 int CFG_DIVERSITY_CTL ;
 int CFG_GMODE_PROTECTION ;
 int CFG_GMODE_PROTECT_RATE_INDEX ;
 int CFG_MAC_ADDR ;
 int CFG_MODE_CTS ;
 int CFG_OVERRD_TX_POWER ;
 int CFG_PROTECTION_TYPE ;
 int CFG_RATE_CONTROL_ENABLE ;
 int CFG_SERVICE_TYPE ;
 int CFG_TPC_HALF_DBM2 ;
 int CFG_TPC_HALF_DBM5 ;
 int CFG_TP_SCALE ;
 int CFG_WME_ENABLED ;
 int ETH_ALEN ;
 int TARGET_DEVICE_AWAKE ;
 int UATH_FILTER_OP_INIT ;
 int UATH_FILTER_OP_SET ;
 int UATH_FILTER_RX_BCAST ;
 int UATH_FILTER_RX_BEACON ;
 int UATH_FILTER_RX_MCAST ;
 int UATH_FILTER_RX_UCAST ;
 int UATH_LED_ACTIVITY ;
 int UATH_LED_ON ;
 int WDCMSG_BIND ;
 int WDCMSG_RESET_KEY_CACHE ;
 int WDCMSG_SET_PWR_MODE ;
 int WDCMSG_TARGET_START ;
 int ar5523_cmd_read (struct ar5523*,int ,int *,int ,int *,int,int ) ;
 int ar5523_cmd_write (struct ar5523*,int ,int *,int,int ) ;
 int ar5523_config (struct ar5523*,int ,int) ;
 int ar5523_config_multi (struct ar5523*,int ,int *,int ) ;
 int ar5523_dbg (struct ar5523*,char*,...) ;
 int ar5523_set_ledsteady (struct ar5523*,int ,int ) ;
 int ar5523_set_rxfilter (struct ar5523*,int,int ) ;
 int ar5523_switch_chan (struct ar5523*) ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_work (int ,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int ar5523_start(struct ieee80211_hw *hw)
{
 struct ar5523 *ar = hw->priv;
 int error;
 __be32 val;

 ar5523_dbg(ar, "start called\n");

 mutex_lock(&ar->mutex);
 val = cpu_to_be32(0);
 ar5523_cmd_write(ar, WDCMSG_BIND, &val, sizeof(val), 0);


 ar5523_config_multi(ar, CFG_MAC_ADDR, &ar->hw->wiphy->perm_addr,
       ETH_ALEN);


 ar5523_config(ar, CFG_RATE_CONTROL_ENABLE, 0x00000001);
 ar5523_config(ar, CFG_DIVERSITY_CTL, 0x00000001);
 ar5523_config(ar, CFG_ABOLT, 0x0000003f);
 ar5523_config(ar, CFG_WME_ENABLED, 0x00000000);

 ar5523_config(ar, CFG_SERVICE_TYPE, 1);
 ar5523_config(ar, CFG_TP_SCALE, 0x00000000);
 ar5523_config(ar, CFG_TPC_HALF_DBM5, 0x0000003c);
 ar5523_config(ar, CFG_TPC_HALF_DBM2, 0x0000003c);
 ar5523_config(ar, CFG_OVERRD_TX_POWER, 0x00000000);
 ar5523_config(ar, CFG_GMODE_PROTECTION, 0x00000000);
 ar5523_config(ar, CFG_GMODE_PROTECT_RATE_INDEX, 0x00000003);
 ar5523_config(ar, CFG_PROTECTION_TYPE, 0x00000000);
 ar5523_config(ar, CFG_MODE_CTS, 0x00000002);

 error = ar5523_cmd_read(ar, WDCMSG_TARGET_START, ((void*)0), 0,
     &val, sizeof(val), AR5523_CMD_FLAG_MAGIC);
 if (error) {
  ar5523_dbg(ar, "could not start target, error %d\n", error);
  goto err;
 }
 ar5523_dbg(ar, "WDCMSG_TARGET_START returns handle: 0x%x\n",
     be32_to_cpu(val));

 ar5523_switch_chan(ar);

 val = cpu_to_be32(TARGET_DEVICE_AWAKE);
 ar5523_cmd_write(ar, WDCMSG_SET_PWR_MODE, &val, sizeof(val), 0);

 ar5523_cmd_write(ar, WDCMSG_RESET_KEY_CACHE, ((void*)0), 0, 0);

 set_bit(AR5523_HW_UP, &ar->flags);
 queue_work(ar->wq, &ar->rx_refill_work);


 ar5523_set_rxfilter(ar, 0, UATH_FILTER_OP_INIT);
 ar5523_set_rxfilter(ar,
       UATH_FILTER_RX_UCAST | UATH_FILTER_RX_MCAST |
       UATH_FILTER_RX_BCAST | UATH_FILTER_RX_BEACON,
       UATH_FILTER_OP_SET);

 ar5523_set_ledsteady(ar, UATH_LED_ACTIVITY, UATH_LED_ON);
 ar5523_dbg(ar, "start OK\n");

err:
 mutex_unlock(&ar->mutex);
 return error;
}
