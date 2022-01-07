
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_LASI_CTRL ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int ) ;
 int bnx2x_set_disable_pmd_transmit (struct link_params*,struct bnx2x_phy*,int) ;
 int bnx2x_sfp_set_transmitter (struct link_params*,struct bnx2x_phy*,int ) ;

__attribute__((used)) static void bnx2x_8727_link_reset(struct bnx2x_phy *phy,
      struct link_params *params)
{
 struct bnx2x *bp = params->bp;


 bnx2x_set_disable_pmd_transmit(params, phy, 1);


 bnx2x_sfp_set_transmitter(params, phy, 0);

 bnx2x_cl45_write(bp, phy, MDIO_PMA_DEVAD, MDIO_PMA_LASI_CTRL, 0);

}
