
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int phy_mode; } ;


 int PHY_MODE_LOW_POWER ;
 int TXC_GLCMD_L01PD_LBN ;
 int TXC_GLCMD_L23PD_LBN ;
 int TXC_GLRGS_GLCMD ;
 int ef4_mdio_read (struct ef4_nic*,int,int ) ;
 int ef4_mdio_write (struct ef4_nic*,int,int ,int) ;

__attribute__((used)) static void txc_glrgs_lane_power(struct ef4_nic *efx, int mmd)
{
 int pd = (1 << TXC_GLCMD_L01PD_LBN) | (1 << TXC_GLCMD_L23PD_LBN);
 int ctl = ef4_mdio_read(efx, mmd, TXC_GLRGS_GLCMD);

 if (!(efx->phy_mode & PHY_MODE_LOW_POWER))
  ctl &= ~pd;
 else
  ctl |= pd;

 ef4_mdio_write(efx, mmd, TXC_GLRGS_GLCMD, ctl);
}
