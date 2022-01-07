
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct altera_tse_private {int mac_dev; } ;


 int csrwr32 (int ,int ,scalar_t__) ;
 int mdio_phy0 ;
 scalar_t__ tse_csroffs (int ) ;

__attribute__((used)) static void sgmii_pcs_write(struct altera_tse_private *priv, int regnum,
    u16 value)
{
 csrwr32(value, priv->mac_dev, tse_csroffs(mdio_phy0) + regnum * 4);
}
