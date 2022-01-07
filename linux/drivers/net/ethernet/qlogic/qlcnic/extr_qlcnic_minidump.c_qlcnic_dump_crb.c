
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct __crb {int addr; int no_ops; scalar_t__ stride; } ;
struct TYPE_2__ {struct __crb crb; } ;
struct qlcnic_dump_entry {TYPE_1__ region; } ;
struct qlcnic_adapter {int dummy; } ;
typedef int __le32 ;


 void* cpu_to_le32 (int) ;
 int qlcnic_ind_rd (struct qlcnic_adapter*,int) ;

__attribute__((used)) static u32 qlcnic_dump_crb(struct qlcnic_adapter *adapter,
      struct qlcnic_dump_entry *entry, __le32 *buffer)
{
 int i;
 u32 addr, data;
 struct __crb *crb = &entry->region.crb;

 addr = crb->addr;

 for (i = 0; i < crb->no_ops; i++) {
  data = qlcnic_ind_rd(adapter, addr);
  *buffer++ = cpu_to_le32(addr);
  *buffer++ = cpu_to_le32(data);
  addr += crb->stride;
 }
 return crb->no_ops * 2 * sizeof(u32);
}
