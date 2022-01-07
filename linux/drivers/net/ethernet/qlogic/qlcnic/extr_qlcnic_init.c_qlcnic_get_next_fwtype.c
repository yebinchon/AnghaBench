
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_2__ {int fw_type; } ;


 int QLCNIC_FLASH_ROMIMAGE ;



__attribute__((used)) static void
qlcnic_get_next_fwtype(struct qlcnic_adapter *adapter)
{
 u8 fw_type;

 switch (adapter->ahw->fw_type) {
 case 128:
  fw_type = 129;
  break;

 case 129:
 default:
  fw_type = QLCNIC_FLASH_ROMIMAGE;
  break;
 }

 adapter->ahw->fw_type = fw_type;
}
