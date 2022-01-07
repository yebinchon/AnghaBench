
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath10k_fw_crash_data {int ramdump_buf; } ;
struct TYPE_2__ {struct ath10k_fw_crash_data* fw_crash_data; } ;
struct ath10k {TYPE_1__ coredump; } ;


 int vfree (int ) ;

void ath10k_coredump_unregister(struct ath10k *ar)
{
 struct ath10k_fw_crash_data *crash_data = ar->coredump.fw_crash_data;

 vfree(crash_data->ramdump_buf);
}
