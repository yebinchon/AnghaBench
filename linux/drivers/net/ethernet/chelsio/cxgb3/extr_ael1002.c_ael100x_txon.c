
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ prtad; } ;
struct cphy {int adapter; TYPE_1__ mdio; } ;


 int A_T3DBG_GPIO_EN ;
 int F_GPIO2_OUT_VAL ;
 int F_GPIO7_OUT_VAL ;
 int msleep (int) ;
 int t3_set_reg_field (int ,int ,int ,int) ;

__attribute__((used)) static void ael100x_txon(struct cphy *phy)
{
 int tx_on_gpio =
  phy->mdio.prtad == 0 ? F_GPIO7_OUT_VAL : F_GPIO2_OUT_VAL;

 msleep(100);
 t3_set_reg_field(phy->adapter, A_T3DBG_GPIO_EN, 0, tx_on_gpio);
 msleep(30);
}
