
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hix5hd2_priv {int mac_core_rst; } ;


 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static inline void hix5hd2_mac_core_reset(struct hix5hd2_priv *priv)
{
 if (!priv->mac_core_rst)
  return;

 reset_control_assert(priv->mac_core_rst);
 reset_control_deassert(priv->mac_core_rst);
}
