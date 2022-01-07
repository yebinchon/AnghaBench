
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {scalar_t__ tgt_mask_reg; } ;


 int writel (int,scalar_t__) ;

__attribute__((used)) static inline void qlcnic_83xx_set_legacy_intr_mask(struct qlcnic_adapter *adapter)
{
 if (adapter->tgt_mask_reg)
  writel(1, adapter->tgt_mask_reg);
}
