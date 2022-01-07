
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_femac_priv {int mac_rst; } ;


 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static void hisi_femac_core_reset(struct hisi_femac_priv *priv)
{
 reset_control_assert(priv->mac_rst);
 reset_control_deassert(priv->mac_rst);
}
