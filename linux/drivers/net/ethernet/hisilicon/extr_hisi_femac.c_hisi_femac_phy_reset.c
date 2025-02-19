
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_femac_priv {int * phy_reset_delays; int phy_rst; } ;


 size_t POST_DELAY ;
 size_t PRE_DELAY ;
 size_t PULSE ;
 int hisi_femac_sleep_us (int ) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static void hisi_femac_phy_reset(struct hisi_femac_priv *priv)
{




 reset_control_deassert(priv->phy_rst);
 hisi_femac_sleep_us(priv->phy_reset_delays[PRE_DELAY]);

 reset_control_assert(priv->phy_rst);



 hisi_femac_sleep_us(priv->phy_reset_delays[PULSE]);
 reset_control_deassert(priv->phy_rst);

 hisi_femac_sleep_us(priv->phy_reset_delays[POST_DELAY]);
}
