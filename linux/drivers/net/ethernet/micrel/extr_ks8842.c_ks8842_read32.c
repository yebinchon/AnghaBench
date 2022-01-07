
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ks8842_adapter {scalar_t__ hw_addr; } ;


 int ioread32 (scalar_t__) ;
 int ks8842_select_bank (struct ks8842_adapter*,int ) ;

__attribute__((used)) static inline u32 ks8842_read32(struct ks8842_adapter *adapter, u16 bank,
 int offset)
{
 ks8842_select_bank(adapter, bank);
 return ioread32(adapter->hw_addr + offset);
}
