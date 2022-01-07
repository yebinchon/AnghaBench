
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct uni_table_desc {int findex; int entry_size; } ;
struct uni_data_desc {int findex; int size; } ;
struct netxen_adapter {size_t file_prd_off; TYPE_1__* fw; } ;
typedef int __le32 ;
struct TYPE_2__ {size_t size; int * data; } ;


 int EINVAL ;
 int NX_UNI_BOOTLD_IDX_OFF ;
 int NX_UNI_DIR_SECT_BOOTLD ;
 int cpu_to_le32 (int) ;
 struct uni_table_desc* nx_get_table_desc (int const*,int ) ;

__attribute__((used)) static int
netxen_nic_validate_bootld(struct netxen_adapter *adapter)
{
 struct uni_table_desc *tab_desc;
 struct uni_data_desc *descr;
 const u8 *unirom = adapter->fw->data;
 __le32 idx = cpu_to_le32(*((int *)&unirom[adapter->file_prd_off] +
    NX_UNI_BOOTLD_IDX_OFF));
 u32 offs;
 u32 tab_size;
 u32 data_size;

 tab_desc = nx_get_table_desc(unirom, NX_UNI_DIR_SECT_BOOTLD);

 if (!tab_desc)
  return -EINVAL;

 tab_size = cpu_to_le32(tab_desc->findex) +
   (cpu_to_le32(tab_desc->entry_size) * (idx + 1));

 if (adapter->fw->size < tab_size)
  return -EINVAL;

 offs = cpu_to_le32(tab_desc->findex) +
  (cpu_to_le32(tab_desc->entry_size) * (idx));
 descr = (struct uni_data_desc *)&unirom[offs];

 data_size = cpu_to_le32(descr->findex) + cpu_to_le32(descr->size);

 if (adapter->fw->size < data_size)
  return -EINVAL;

 return 0;
}
