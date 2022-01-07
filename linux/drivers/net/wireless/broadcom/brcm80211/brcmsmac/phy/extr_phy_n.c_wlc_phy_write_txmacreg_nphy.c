
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct brcms_phy {int dummy; } ;


 int write_phy_reg (struct brcms_phy*,int,int ) ;

__attribute__((used)) static void
wlc_phy_write_txmacreg_nphy(struct brcms_phy *pi, u16 holdoff, u16 delay)
{
 write_phy_reg(pi, 0x77, holdoff);
 write_phy_reg(pi, 0xb4, delay);
}
