
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int MDIO_XS_DEVAD ;
 int MDIO_XS_SFX7101_XGXS_TEST1 ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;

__attribute__((used)) static void bnx2x_7101_config_loopback(struct bnx2x_phy *phy,
           struct link_params *params)
{
 struct bnx2x *bp = params->bp;

 bnx2x_cl45_write(bp, phy,
    MDIO_XS_DEVAD, MDIO_XS_SFX7101_XGXS_TEST1, 0x100);
}
