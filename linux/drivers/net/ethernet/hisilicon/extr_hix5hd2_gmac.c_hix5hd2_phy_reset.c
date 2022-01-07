
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hix5hd2_priv {int * phy_reset_delays; int phy_rst; } ;


 size_t POST_DELAY ;
 size_t PRE_DELAY ;
 size_t PULSE ;
 int hix5hd2_sleep_us (int ) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static void hix5hd2_phy_reset(struct hix5hd2_priv *priv)
{




 reset_control_deassert(priv->phy_rst);
 hix5hd2_sleep_us(priv->phy_reset_delays[PRE_DELAY]);

 reset_control_assert(priv->phy_rst);



 hix5hd2_sleep_us(priv->phy_reset_delays[PULSE]);
 reset_control_deassert(priv->phy_rst);

 hix5hd2_sleep_us(priv->phy_reset_delays[POST_DELAY]);
}
