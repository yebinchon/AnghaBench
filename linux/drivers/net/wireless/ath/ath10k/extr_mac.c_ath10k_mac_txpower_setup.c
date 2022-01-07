
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* pdev_param; } ;
struct ath10k {TYPE_2__ wmi; int conf_mutex; } ;
struct TYPE_3__ {int txpower_limit5g; int txpower_limit2g; } ;


 int ATH10K_DBG_MAC ;
 int ath10k_dbg (struct ath10k*,int ,char*,int) ;
 int ath10k_warn (struct ath10k*,char*,int,int) ;
 int ath10k_wmi_pdev_set_param (struct ath10k*,int ,int) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int ath10k_mac_txpower_setup(struct ath10k *ar, int txpower)
{
 int ret;
 u32 param;

 lockdep_assert_held(&ar->conf_mutex);

 ath10k_dbg(ar, ATH10K_DBG_MAC, "mac txpower %d\n", txpower);

 param = ar->wmi.pdev_param->txpower_limit2g;
 ret = ath10k_wmi_pdev_set_param(ar, param, txpower * 2);
 if (ret) {
  ath10k_warn(ar, "failed to set 2g txpower %d: %d\n",
       txpower, ret);
  return ret;
 }

 param = ar->wmi.pdev_param->txpower_limit5g;
 ret = ath10k_wmi_pdev_set_param(ar, param, txpower * 2);
 if (ret) {
  ath10k_warn(ar, "failed to set 5g txpower %d: %d\n",
       txpower, ret);
  return ret;
 }

 return 0;
}
