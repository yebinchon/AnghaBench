
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct brcms_phy {int d11core; } ;


 int D11REGOFFS (int ) ;
 int bcma_write16 (int ,int ,int ) ;
 int phychannel ;

void write_phy_channel_reg(struct brcms_phy *pi, uint val)
{
 bcma_write16(pi->d11core, D11REGOFFS(phychannel), val);
}
