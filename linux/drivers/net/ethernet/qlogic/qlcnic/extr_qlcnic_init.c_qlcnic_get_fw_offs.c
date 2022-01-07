
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct uni_data_desc {int findex; } ;
struct qlcnic_adapter {TYPE_2__* fw; TYPE_1__* ahw; } ;
struct TYPE_4__ {int * data; } ;
struct TYPE_3__ {scalar_t__ fw_type; } ;


 size_t QLCNIC_IMAGE_START ;
 scalar_t__ QLCNIC_UNIFIED_ROMIMAGE ;
 int QLCNIC_UNI_DIR_SECT_FW ;
 int QLCNIC_UNI_FIRMWARE_IDX_OFF ;
 size_t le32_to_cpu (int ) ;
 struct uni_data_desc* qlcnic_get_data_desc (struct qlcnic_adapter*,int ,int ) ;

__attribute__((used)) static u8 *
qlcnic_get_fw_offs(struct qlcnic_adapter *adapter)
{
 u32 offs = QLCNIC_IMAGE_START;
 struct uni_data_desc *data_desc;

 data_desc = qlcnic_get_data_desc(adapter, QLCNIC_UNI_DIR_SECT_FW,
      QLCNIC_UNI_FIRMWARE_IDX_OFF);
 if (adapter->ahw->fw_type == QLCNIC_UNIFIED_ROMIMAGE)
  offs = le32_to_cpu(data_desc->findex);

 return (u8 *)&adapter->fw->data[offs];
}
