
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bus; } ;
struct ath10k {TYPE_1__ hif; } ;







 int ATH10K_FW_FILE_BASE ;
 int ath10k_bus_str (int) ;
 int scnprintf (char*,size_t,char*,int ,int,...) ;

__attribute__((used)) static void ath10k_core_get_fw_name(struct ath10k *ar, char *fw_name,
        size_t fw_name_len, int fw_api)
{
 switch (ar->hif.bus) {
 case 130:
 case 128:
  scnprintf(fw_name, fw_name_len, "%s-%s-%d.bin",
     ATH10K_FW_FILE_BASE, ath10k_bus_str(ar->hif.bus),
     fw_api);
  break;
 case 131:
 case 132:
 case 129:
  scnprintf(fw_name, fw_name_len, "%s-%d.bin",
     ATH10K_FW_FILE_BASE, fw_api);
  break;
 }
}
