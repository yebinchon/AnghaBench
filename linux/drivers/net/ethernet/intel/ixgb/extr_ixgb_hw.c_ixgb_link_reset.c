
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ixgb_hw {int dummy; } ;


 int CTRL0 ;
 int IXGB_CTRL0_LRST ;
 int IXGB_DELAY_USECS_AFTER_LINK_RESET ;
 int IXGB_READ_REG (struct ixgb_hw*,int ) ;
 int IXGB_STATUS_LU ;
 int IXGB_WRITE_REG (struct ixgb_hw*,int ,int) ;
 int IXGB_XPCSS_ALIGN_STATUS ;
 scalar_t__ MAX_RESET_ITERATIONS ;
 int STATUS ;
 int XPCSS ;
 int udelay (int ) ;

__attribute__((used)) static bool
ixgb_link_reset(struct ixgb_hw *hw)
{
 bool link_status = 0;
 u8 wait_retries = MAX_RESET_ITERATIONS;
 u8 lrst_retries = MAX_RESET_ITERATIONS;

 do {

  IXGB_WRITE_REG(hw, CTRL0,
          IXGB_READ_REG(hw, CTRL0) | IXGB_CTRL0_LRST);


  do {
   udelay(IXGB_DELAY_USECS_AFTER_LINK_RESET);
   link_status =
       ((IXGB_READ_REG(hw, STATUS) & IXGB_STATUS_LU)
        && (IXGB_READ_REG(hw, XPCSS) &
     IXGB_XPCSS_ALIGN_STATUS)) ? 1 : 0;
  } while (!link_status && --wait_retries);

 } while (!link_status && --lrst_retries);

 return link_status;
}
