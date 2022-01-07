
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ag71xx {int ndev; } ;


 int AG71XX_INT_INIT ;
 int AG71XX_REG_INT_ENABLE ;
 int AG71XX_REG_RX_CTRL ;
 int RX_CTRL_RXE ;
 int ag71xx_wr (struct ag71xx*,int ,int ) ;
 int netif_wake_queue (int ) ;

__attribute__((used)) static void ag71xx_hw_start(struct ag71xx *ag)
{

 ag71xx_wr(ag, AG71XX_REG_RX_CTRL, RX_CTRL_RXE);


 ag71xx_wr(ag, AG71XX_REG_INT_ENABLE, AG71XX_INT_INIT);

 netif_wake_queue(ag->ndev);
}
