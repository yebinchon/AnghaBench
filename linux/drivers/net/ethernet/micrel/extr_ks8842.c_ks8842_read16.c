
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ks8842_adapter {scalar_t__ hw_addr; } ;


 int ioread16 (scalar_t__) ;
 int ks8842_select_bank (struct ks8842_adapter*,int ) ;

__attribute__((used)) static inline u16 ks8842_read16(struct ks8842_adapter *adapter, u16 bank,
 int offset)
{
 ks8842_select_bank(adapter, bank);
 return ioread16(adapter->hw_addr + offset);
}
