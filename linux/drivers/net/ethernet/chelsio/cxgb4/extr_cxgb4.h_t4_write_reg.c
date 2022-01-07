
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct adapter {scalar_t__ regs; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void t4_write_reg(struct adapter *adap, u32 reg_addr, u32 val)
{
 writel(val, adap->regs + reg_addr);
}
