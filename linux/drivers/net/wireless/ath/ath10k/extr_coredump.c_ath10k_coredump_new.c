
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath10k_fw_crash_data {int timestamp; int guid; } ;
struct TYPE_2__ {struct ath10k_fw_crash_data* fw_crash_data; } ;
struct ath10k {int dump_mutex; TYPE_1__ coredump; } ;


 scalar_t__ ath10k_coredump_mask ;
 int guid_gen (int *) ;
 int ktime_get_real_ts64 (int *) ;
 int lockdep_assert_held (int *) ;

struct ath10k_fw_crash_data *ath10k_coredump_new(struct ath10k *ar)
{
 struct ath10k_fw_crash_data *crash_data = ar->coredump.fw_crash_data;

 lockdep_assert_held(&ar->dump_mutex);

 if (ath10k_coredump_mask == 0)

  return ((void*)0);

 guid_gen(&crash_data->guid);
 ktime_get_real_ts64(&crash_data->timestamp);

 return crash_data;
}
