
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {scalar_t__ io; } ;


 int GLOBAL_SOFTWARE_RESET ;
 scalar_t__ KS884X_GLOBAL_CTRL_OFFSET ;
 int mdelay (int) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void hw_reset(struct ksz_hw *hw)
{
 writew(GLOBAL_SOFTWARE_RESET, hw->io + KS884X_GLOBAL_CTRL_OFFSET);


 mdelay(10);


 writew(0, hw->io + KS884X_GLOBAL_CTRL_OFFSET);
}
