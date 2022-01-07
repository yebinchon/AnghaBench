
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ag71xx {int dummy; } ;


 int AG71XX_REG_INT_ENABLE ;
 int AG71XX_REG_RX_CTRL ;
 int AG71XX_REG_TX_CTRL ;
 int ag71xx_wr (struct ag71xx*,int ,int ) ;

__attribute__((used)) static void ag71xx_hw_stop(struct ag71xx *ag)
{

 ag71xx_wr(ag, AG71XX_REG_INT_ENABLE, 0);
 ag71xx_wr(ag, AG71XX_REG_RX_CTRL, 0);
 ag71xx_wr(ag, AG71XX_REG_TX_CTRL, 0);
}
