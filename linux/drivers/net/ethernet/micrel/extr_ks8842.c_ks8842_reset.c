
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks8842_adapter {int conf_flags; scalar_t__ hw_addr; } ;


 int MICREL_KS884X ;
 scalar_t__ REG_GRR ;
 scalar_t__ REG_TIMB_RST ;
 int iowrite16 (int ,scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int ks8842_write16 (struct ks8842_adapter*,int,int,scalar_t__) ;
 int msleep (int) ;

__attribute__((used)) static void ks8842_reset(struct ks8842_adapter *adapter)
{
 if (adapter->conf_flags & MICREL_KS884X) {
  ks8842_write16(adapter, 3, 1, REG_GRR);
  msleep(10);
  iowrite16(0, adapter->hw_addr + REG_GRR);
 } else {







  iowrite32(0x1, adapter->hw_addr + REG_TIMB_RST);
  msleep(20);
 }
}
