
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DA ;
 int MAC_MDIOSCAR ;
 int MII_ADDR_C45 ;
 int PA ;
 int RA ;
 int XGMAC_SET_BITS (unsigned int,int ,int ,unsigned int) ;

__attribute__((used)) static unsigned int xgbe_create_mdio_sca(int port, int reg)
{
 unsigned int mdio_sca, da;

 da = (reg & MII_ADDR_C45) ? reg >> 16 : 0;

 mdio_sca = 0;
 XGMAC_SET_BITS(mdio_sca, MAC_MDIOSCAR, RA, reg);
 XGMAC_SET_BITS(mdio_sca, MAC_MDIOSCAR, PA, port);
 XGMAC_SET_BITS(mdio_sca, MAC_MDIOSCAR, DA, da);

 return mdio_sca;
}
