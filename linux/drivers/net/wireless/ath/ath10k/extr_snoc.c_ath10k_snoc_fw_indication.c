
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int soc_version; } ;
struct ath10k_snoc {int flags; TYPE_1__ target_info; } ;
struct ath10k_bus_params {int chip_id; int dev_type; } ;
struct ath10k {int dev_flags; int restart_work; int workqueue; } ;


 int ATH10K_DEV_TYPE_LL ;
 int ATH10K_FLAG_CRASH_FLUSH ;


 int ATH10K_SNOC_FLAG_RECOVERY ;
 int ATH10K_SNOC_FLAG_REGISTERED ;
 int ATH10K_SNOC_FLAG_UNREGISTERING ;
 int EINVAL ;
 int ath10k_core_register (struct ath10k*,struct ath10k_bus_params*) ;
 int ath10k_err (struct ath10k*,char*,int) ;
 struct ath10k_snoc* ath10k_snoc_priv (struct ath10k*) ;
 int queue_work (int ,int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

int ath10k_snoc_fw_indication(struct ath10k *ar, u64 type)
{
 struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
 struct ath10k_bus_params bus_params = {};
 int ret;

 if (test_bit(ATH10K_SNOC_FLAG_UNREGISTERING, &ar_snoc->flags))
  return 0;

 switch (type) {
 case 128:
  if (test_bit(ATH10K_SNOC_FLAG_REGISTERED, &ar_snoc->flags)) {
   queue_work(ar->workqueue, &ar->restart_work);
   break;
  }

  bus_params.dev_type = ATH10K_DEV_TYPE_LL;
  bus_params.chip_id = ar_snoc->target_info.soc_version;
  ret = ath10k_core_register(ar, &bus_params);
  if (ret) {
   ath10k_err(ar, "Failed to register driver core: %d\n",
       ret);
   return ret;
  }
  set_bit(ATH10K_SNOC_FLAG_REGISTERED, &ar_snoc->flags);
  break;
 case 129:
  set_bit(ATH10K_SNOC_FLAG_RECOVERY, &ar_snoc->flags);
  set_bit(ATH10K_FLAG_CRASH_FLUSH, &ar->dev_flags);
  break;
 default:
  ath10k_err(ar, "invalid fw indication: %llx\n", type);
  return -EINVAL;
 }

 return 0;
}
