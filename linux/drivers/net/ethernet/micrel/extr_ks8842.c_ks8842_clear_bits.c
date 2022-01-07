
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ks8842_adapter {scalar_t__ hw_addr; } ;


 int ioread16 (scalar_t__) ;
 int iowrite16 (int ,scalar_t__) ;
 int ks8842_select_bank (struct ks8842_adapter*,int ) ;

__attribute__((used)) static inline void ks8842_clear_bits(struct ks8842_adapter *adapter, u16 bank,
 u16 bits, int offset)
{
 u16 reg;
 ks8842_select_bank(adapter, bank);
 reg = ioread16(adapter->hw_addr + offset);
 reg &= ~bits;
 iowrite16(reg, adapter->hw_addr + offset);
}
