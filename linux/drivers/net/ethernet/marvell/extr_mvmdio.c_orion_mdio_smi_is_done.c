
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orion_mdio_dev {int regs; } ;


 int MVMDIO_SMI_BUSY ;
 int readl (int ) ;

__attribute__((used)) static int orion_mdio_smi_is_done(struct orion_mdio_dev *dev)
{
 return !(readl(dev->regs) & MVMDIO_SMI_BUSY);
}
