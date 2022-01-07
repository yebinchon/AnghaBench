
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {scalar_t__ regs; } ;


 scalar_t__ A_SG_DOORBELL ;
 int wmb () ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void doorbell_pio(struct adapter *adapter, u32 val)
{
 wmb();
 writel(val, adapter->regs + A_SG_DOORBELL);
}
