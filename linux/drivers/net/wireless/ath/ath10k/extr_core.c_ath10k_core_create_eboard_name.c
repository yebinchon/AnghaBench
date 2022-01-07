
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int bmi_eboard_id; int bmi_chip_id; scalar_t__ bmi_ids_valid; } ;
struct TYPE_3__ {int bus; } ;
struct ath10k {TYPE_2__ id; TYPE_1__ hif; } ;


 int ATH10K_DBG_BOOT ;
 int ath10k_bus_str (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,char*) ;
 int scnprintf (char*,size_t,char*,int ,int ,int ) ;

__attribute__((used)) static int ath10k_core_create_eboard_name(struct ath10k *ar, char *name,
       size_t name_len)
{
 if (ar->id.bmi_ids_valid) {
  scnprintf(name, name_len,
     "bus=%s,bmi-chip-id=%d,bmi-eboard-id=%d",
     ath10k_bus_str(ar->hif.bus),
     ar->id.bmi_chip_id,
     ar->id.bmi_eboard_id);

  ath10k_dbg(ar, ATH10K_DBG_BOOT, "boot using eboard name '%s'\n", name);
  return 0;
 }

 return -1;
}
