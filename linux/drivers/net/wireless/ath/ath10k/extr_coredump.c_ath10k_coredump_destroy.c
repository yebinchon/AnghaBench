
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* fw_crash_data; } ;
struct ath10k {TYPE_1__ coredump; } ;
struct TYPE_4__ {scalar_t__ ramdump_buf_len; struct TYPE_4__* ramdump_buf; } ;


 int vfree (TYPE_2__*) ;

void ath10k_coredump_destroy(struct ath10k *ar)
{
 if (ar->coredump.fw_crash_data->ramdump_buf) {
  vfree(ar->coredump.fw_crash_data->ramdump_buf);
  ar->coredump.fw_crash_data->ramdump_buf = ((void*)0);
  ar->coredump.fw_crash_data->ramdump_buf_len = 0;
 }

 vfree(ar->coredump.fw_crash_data);
 ar->coredump.fw_crash_data = ((void*)0);
}
