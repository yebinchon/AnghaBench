
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct altera_tse_private {int mac_dev; } ;


 int MAC_CMDCFG_RX_ENA ;
 int MAC_CMDCFG_TX_ENA ;
 int command_config ;
 int csrrd32 (int ,int ) ;
 int csrwr32 (int,int ,int ) ;
 int tse_csroffs (int ) ;

__attribute__((used)) static void tse_set_mac(struct altera_tse_private *priv, bool enable)
{
 u32 value = csrrd32(priv->mac_dev, tse_csroffs(command_config));

 if (enable)
  value |= MAC_CMDCFG_TX_ENA | MAC_CMDCFG_RX_ENA;
 else
  value &= ~(MAC_CMDCFG_TX_ENA | MAC_CMDCFG_RX_ENA);

 csrwr32(value, priv->mac_dev, tse_csroffs(command_config));
}
