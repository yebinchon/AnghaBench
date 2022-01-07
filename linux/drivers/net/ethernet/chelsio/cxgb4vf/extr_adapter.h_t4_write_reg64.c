
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct adapter {scalar_t__ regs; } ;


 int writeq (int ,scalar_t__) ;

__attribute__((used)) static inline void t4_write_reg64(struct adapter *adapter, u32 reg_addr,
      u64 val)
{
 writeq(val, adapter->regs + reg_addr);
}
