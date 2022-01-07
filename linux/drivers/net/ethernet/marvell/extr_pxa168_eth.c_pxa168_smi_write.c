
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pxa168_eth_private {int dev; } ;
struct mii_bus {struct pxa168_eth_private* priv; } ;


 int ETIMEDOUT ;
 int SMI ;
 int SMI_OP_W ;
 int netdev_err (int ,char*) ;
 int netdev_warn (int ,char*) ;
 scalar_t__ smi_wait_ready (struct pxa168_eth_private*) ;
 int wrl (struct pxa168_eth_private*,int ,int) ;

__attribute__((used)) static int pxa168_smi_write(struct mii_bus *bus, int phy_addr, int regnum,
       u16 value)
{
 struct pxa168_eth_private *pep = bus->priv;

 if (smi_wait_ready(pep)) {
  netdev_warn(pep->dev, "pxa168_eth: SMI bus busy timeout\n");
  return -ETIMEDOUT;
 }

 wrl(pep, SMI, (phy_addr << 16) | (regnum << 21) |
     SMI_OP_W | (value & 0xffff));

 if (smi_wait_ready(pep)) {
  netdev_err(pep->dev, "pxa168_eth: SMI bus busy timeout\n");
  return -ETIMEDOUT;
 }

 return 0;
}
