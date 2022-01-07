
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u32 ;
struct aq_hw_s {unsigned int mmio; int flags; TYPE_2__* aq_nic_cfg; } ;
struct TYPE_4__ {TYPE_1__* aq_hw_caps; } ;
struct TYPE_3__ {unsigned int hw_alive_check_addr; } ;


 int AQ_HW_FLAG_ERR_UNPLUG ;
 int aq_utils_obj_set (int *,int ) ;
 unsigned int readl (unsigned int) ;

u32 aq_hw_read_reg(struct aq_hw_s *hw, u32 reg)
{
 u32 value = readl(hw->mmio + reg);

 if ((~0U) == value &&
     (~0U) == readl(hw->mmio +
      hw->aq_nic_cfg->aq_hw_caps->hw_alive_check_addr))
  aq_utils_obj_set(&hw->flags, AQ_HW_FLAG_ERR_UNPLUG);

 return value;
}
