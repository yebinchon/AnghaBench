
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atl2_adapter {int hw; } ;


 int ATL2_WRITE_FLUSH (int *) ;
 int ATL2_WRITE_REG (int *,int ,int ) ;
 int IMR_NORMAL_MASK ;
 int REG_IMR ;

__attribute__((used)) static inline void atl2_irq_enable(struct atl2_adapter *adapter)
{
 ATL2_WRITE_REG(&adapter->hw, REG_IMR, IMR_NORMAL_MASK);
 ATL2_WRITE_FLUSH(&adapter->hw);
}
