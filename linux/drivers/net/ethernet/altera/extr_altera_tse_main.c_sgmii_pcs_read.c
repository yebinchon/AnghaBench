
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct altera_tse_private {int mac_dev; } ;


 int csrrd32 (int ,scalar_t__) ;
 int mdio_phy0 ;
 scalar_t__ tse_csroffs (int ) ;

__attribute__((used)) static u16 sgmii_pcs_read(struct altera_tse_private *priv, int regnum)
{
 return csrrd32(priv->mac_dev,
         tse_csroffs(mdio_phy0) + regnum * 4) & 0xffff;
}
