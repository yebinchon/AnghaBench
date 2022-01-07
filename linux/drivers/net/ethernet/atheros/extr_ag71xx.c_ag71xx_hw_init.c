
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ag71xx {int mac_reset; } ;


 int AG71XX_REG_MAC_CFG1 ;
 int MAC_CFG1_SR ;
 int ag71xx_dma_reset (struct ag71xx*) ;
 int ag71xx_hw_setup (struct ag71xx*) ;
 int ag71xx_hw_stop (struct ag71xx*) ;
 int ag71xx_sb (struct ag71xx*,int ,int ) ;
 int msleep (int) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void ag71xx_hw_init(struct ag71xx *ag)
{
 ag71xx_hw_stop(ag);

 ag71xx_sb(ag, AG71XX_REG_MAC_CFG1, MAC_CFG1_SR);
 usleep_range(20, 30);

 reset_control_assert(ag->mac_reset);
 msleep(100);
 reset_control_deassert(ag->mac_reset);
 msleep(200);

 ag71xx_hw_setup(ag);

 ag71xx_dma_reset(ag);
}
