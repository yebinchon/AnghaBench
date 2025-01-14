
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct uni_data_desc {int size; int findex; } ;
struct qlcnic_adapter {TYPE_1__* ahw; struct firmware* fw; } ;
struct firmware {int * data; } ;
typedef int __le32 ;
struct TYPE_2__ {scalar_t__ fw_type; } ;


 size_t QLCNIC_FW_VERSION_OFFSET ;
 scalar_t__ QLCNIC_UNIFIED_ROMIMAGE ;
 int QLCNIC_UNI_DIR_SECT_FW ;
 int QLCNIC_UNI_FIRMWARE_IDX_OFF ;
 int le32_to_cpu (int ) ;
 struct uni_data_desc* qlcnic_get_data_desc (struct qlcnic_adapter*,int ,int ) ;
 int sscanf (int const*,char*,int*,int*,int*) ;
 int strncmp (int const*,char*,int) ;

__attribute__((used)) static u32 qlcnic_get_fw_version(struct qlcnic_adapter *adapter)
{
 struct uni_data_desc *fw_data_desc;
 const struct firmware *fw = adapter->fw;
 u32 major, minor, sub;
 __le32 version_offset;
 const u8 *ver_str;
 int i, ret;

 if (adapter->ahw->fw_type != QLCNIC_UNIFIED_ROMIMAGE) {
  version_offset = *(__le32 *)&fw->data[QLCNIC_FW_VERSION_OFFSET];
  return le32_to_cpu(version_offset);
 }

 fw_data_desc = qlcnic_get_data_desc(adapter, QLCNIC_UNI_DIR_SECT_FW,
   QLCNIC_UNI_FIRMWARE_IDX_OFF);
 ver_str = fw->data + le32_to_cpu(fw_data_desc->findex) +
    le32_to_cpu(fw_data_desc->size) - 17;

 for (i = 0; i < 12; i++) {
  if (!strncmp(&ver_str[i], "REV=", 4)) {
   ret = sscanf(&ver_str[i+4], "%u.%u.%u ",
     &major, &minor, &sub);
   if (ret != 3)
    return 0;
   else
    return major + (minor << 8) + (sub << 16);
  }
 }

 return 0;
}
