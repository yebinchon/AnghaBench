
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fjes_hw {int dummy; } ;
typedef enum REG_ICTL_MASK { ____Placeholder_REG_ICTL_MASK } REG_ICTL_MASK ;


 int XSCT_IMC ;
 int XSCT_IMS ;
 int wr32 (int ,int) ;

void fjes_hw_set_irqmask(struct fjes_hw *hw,
    enum REG_ICTL_MASK intr_mask, bool mask)
{
 if (mask)
  wr32(XSCT_IMS, intr_mask);
 else
  wr32(XSCT_IMC, intr_mask);
}
