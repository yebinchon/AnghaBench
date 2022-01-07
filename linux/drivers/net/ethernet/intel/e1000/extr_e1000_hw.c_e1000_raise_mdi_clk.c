
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int CTRL ;
 int E1000_CTRL_MDC ;
 int E1000_WRITE_FLUSH () ;
 int ew32 (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void e1000_raise_mdi_clk(struct e1000_hw *hw, u32 *ctrl)
{



 ew32(CTRL, (*ctrl | E1000_CTRL_MDC));
 E1000_WRITE_FLUSH();
 udelay(10);
}
