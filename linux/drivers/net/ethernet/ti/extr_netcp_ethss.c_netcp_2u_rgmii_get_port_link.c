
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gbe_priv {int dummy; } ;


 int GBE_REG_ADDR (struct gbe_priv*,int ,int ) ;
 int RGMII_REG_STATUS_LINK ;
 int readl (int ) ;
 int rgmii_status ;
 int ss_regs ;

__attribute__((used)) static void netcp_2u_rgmii_get_port_link(struct gbe_priv *gbe_dev, bool *status)
{
 u32 val = 0;

 val = readl(GBE_REG_ADDR(gbe_dev, ss_regs, rgmii_status));
 *status = !!(val & RGMII_REG_STATUS_LINK);
}
