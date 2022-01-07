
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int COMPENSATION_REG1 ;
 int DMA_IP_CTRL_REG ;
 int MASTER_LOCK_REG ;
 unsigned int MSP_CLK_CTRL_REG ;
 unsigned int PCIE_SoC_INT_ROUTER_STATUS3_REG ;
 int SPARE3_RESERVED ;
 int SYSTEM_CONFIG_STATUS_REG ;
 int TEST_CTL_REG ;
 scalar_t__ __reg_within_range (unsigned int,int ,int ) ;

__attribute__((used)) static bool sta2x11_apb_soc_regs_readable_reg(struct device *dev,
           unsigned int reg)
{
 return reg <= PCIE_SoC_INT_ROUTER_STATUS3_REG ||
  __reg_within_range(reg, DMA_IP_CTRL_REG, SPARE3_RESERVED) ||
  __reg_within_range(reg, MASTER_LOCK_REG,
       SYSTEM_CONFIG_STATUS_REG) ||
  reg == MSP_CLK_CTRL_REG ||
  __reg_within_range(reg, COMPENSATION_REG1, TEST_CTL_REG);
}
