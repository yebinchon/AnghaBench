
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ksz_hw {scalar_t__ io; } ;


 scalar_t__ KS8841_WOL_CTRL_OFFSET ;
 int readw (scalar_t__) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void hw_cfg_wol(struct ksz_hw *hw, u16 frame, int set)
{
 u16 data;

 data = readw(hw->io + KS8841_WOL_CTRL_OFFSET);
 if (set)
  data |= frame;
 else
  data &= ~frame;
 writew(data, hw->io + KS8841_WOL_CTRL_OFFSET);
}
