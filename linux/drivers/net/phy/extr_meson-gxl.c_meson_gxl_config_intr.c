
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {scalar_t__ interrupts; } ;


 int INTSRC_ANEG_COMPLETE ;
 int INTSRC_ANEG_LP_ACK ;
 int INTSRC_ANEG_PR ;
 int INTSRC_LINK_DOWN ;
 int INTSRC_MASK ;
 int INTSRC_PARALLEL_FAULT ;
 int INTSRC_REMOTE_FAULT ;
 scalar_t__ PHY_INTERRUPT_ENABLED ;
 int meson_gxl_ack_interrupt (struct phy_device*) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int meson_gxl_config_intr(struct phy_device *phydev)
{
 u16 val;
 int ret;

 if (phydev->interrupts == PHY_INTERRUPT_ENABLED) {
  val = INTSRC_ANEG_PR
   | INTSRC_PARALLEL_FAULT
   | INTSRC_ANEG_LP_ACK
   | INTSRC_LINK_DOWN
   | INTSRC_REMOTE_FAULT
   | INTSRC_ANEG_COMPLETE;
 } else {
  val = 0;
 }


 ret = meson_gxl_ack_interrupt(phydev);
 if (ret)
  return ret;

 return phy_write(phydev, INTSRC_MASK, val);
}
