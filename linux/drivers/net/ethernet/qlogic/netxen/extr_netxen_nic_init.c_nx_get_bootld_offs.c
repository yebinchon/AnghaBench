
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct netxen_adapter {scalar_t__ fw_type; TYPE_1__* fw; } ;
struct TYPE_4__ {int findex; } ;
struct TYPE_3__ {int * data; } ;


 size_t NETXEN_BOOTLD_START ;
 scalar_t__ NX_UNIFIED_ROMIMAGE ;
 int NX_UNI_BOOTLD_IDX_OFF ;
 int NX_UNI_DIR_SECT_BOOTLD ;
 size_t cpu_to_le32 (int ) ;
 TYPE_2__* nx_get_data_desc (struct netxen_adapter*,int ,int ) ;

__attribute__((used)) static u8 *
nx_get_bootld_offs(struct netxen_adapter *adapter)
{
 u32 offs = NETXEN_BOOTLD_START;

 if (adapter->fw_type == NX_UNIFIED_ROMIMAGE)
  offs = cpu_to_le32((nx_get_data_desc(adapter,
     NX_UNI_DIR_SECT_BOOTLD,
     NX_UNI_BOOTLD_IDX_OFF))->findex);

 return (u8 *)&adapter->fw->data[offs];
}
