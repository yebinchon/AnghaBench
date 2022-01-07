
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orion_mdio_dev {scalar_t__ regs; } ;


 int MVMDIO_XSMI_BUSY ;
 scalar_t__ MVMDIO_XSMI_MGNT_REG ;
 int readl (scalar_t__) ;

__attribute__((used)) static int orion_mdio_xsmi_is_done(struct orion_mdio_dev *dev)
{
 return !(readl(dev->regs + MVMDIO_XSMI_MGNT_REG) & MVMDIO_XSMI_BUSY);
}
