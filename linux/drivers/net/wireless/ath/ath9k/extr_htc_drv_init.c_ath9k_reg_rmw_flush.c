
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct register_rmw {int dummy; } ;
struct ath_hw {int dummy; } ;
struct ath_common {scalar_t__ priv; } ;
struct ath9k_htc_priv {TYPE_1__* wmi; int fw_flags; } ;
typedef int rsp_status ;
struct TYPE_2__ {int multi_rmw_idx; int multi_rmw_mutex; int multi_rmw; int m_rmw_cnt; } ;


 int HTC_FWFLAG_NO_RMW ;
 int WMI ;
 int WMI_REG_RMW_CMDID ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_wmi_cmd (TYPE_1__*,int ,int *,int,int *,int,int) ;
 int ath_dbg (struct ath_common*,int ,char*,int) ;
 int atomic_dec (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ath9k_reg_rmw_flush(void *hw_priv)
{
 struct ath_hw *ah = hw_priv;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_htc_priv *priv = (struct ath9k_htc_priv *) common->priv;
 u32 rsp_status;
 int r;

 if (test_bit(HTC_FWFLAG_NO_RMW, &priv->fw_flags))
  return;

 atomic_dec(&priv->wmi->m_rmw_cnt);

 mutex_lock(&priv->wmi->multi_rmw_mutex);

 if (priv->wmi->multi_rmw_idx) {
  r = ath9k_wmi_cmd(priv->wmi, WMI_REG_RMW_CMDID,
     (u8 *) &priv->wmi->multi_rmw,
     sizeof(struct register_rmw) * priv->wmi->multi_rmw_idx,
     (u8 *) &rsp_status, sizeof(rsp_status),
     100);
  if (unlikely(r)) {
   ath_dbg(common, WMI,
    "REGISTER RMW FAILED, multi len: %d\n",
    priv->wmi->multi_rmw_idx);
  }
  priv->wmi->multi_rmw_idx = 0;
 }

 mutex_unlock(&priv->wmi->multi_rmw_mutex);
}
