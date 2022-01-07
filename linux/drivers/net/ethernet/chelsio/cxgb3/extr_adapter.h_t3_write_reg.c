
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct adapter {scalar_t__ regs; } ;


 int CH_DBG (struct adapter*,int ,char*,scalar_t__,scalar_t__) ;
 int MMIO ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void t3_write_reg(struct adapter *adapter, u32 reg_addr, u32 val)
{
 CH_DBG(adapter, MMIO, "setting register 0x%x to 0x%x\n", reg_addr, val);
 writel(val, adapter->regs + reg_addr);
}
