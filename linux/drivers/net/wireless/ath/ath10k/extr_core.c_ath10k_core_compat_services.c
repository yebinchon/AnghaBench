
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath10k_fw_file {int wmi_op_version; } ;
struct TYPE_4__ {int svc_map; } ;
struct TYPE_3__ {struct ath10k_fw_file fw_file; } ;
struct ath10k {TYPE_2__ wmi; TYPE_1__ normal_mode_fw; } ;






 int WMI_SERVICE_THERM_THROT ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int ath10k_core_compat_services(struct ath10k *ar)
{
 struct ath10k_fw_file *fw_file = &ar->normal_mode_fw.fw_file;





 switch (fw_file->wmi_op_version) {
 case 131:
 case 130:
 case 129:
 case 128:
  set_bit(WMI_SERVICE_THERM_THROT, ar->wmi.svc_map);
  break;
 default:
  break;
 }

 return 0;
}
