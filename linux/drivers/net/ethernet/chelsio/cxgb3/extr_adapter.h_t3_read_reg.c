
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct adapter {scalar_t__ regs; } ;


 int CH_DBG (struct adapter*,int ,char*,scalar_t__,scalar_t__) ;
 int MMIO ;
 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 t3_read_reg(struct adapter *adapter, u32 reg_addr)
{
 u32 val = readl(adapter->regs + reg_addr);

 CH_DBG(adapter, MMIO, "read register 0x%x value 0x%x\n", reg_addr, val);
 return val;
}
