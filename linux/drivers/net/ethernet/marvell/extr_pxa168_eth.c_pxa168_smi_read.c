
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa168_eth_private {int dev; } ;
struct mii_bus {struct pxa168_eth_private* priv; } ;


 int ENODEV ;
 int ETIMEDOUT ;
 int PHY_WAIT_ITERATIONS ;
 int SMI ;
 int SMI_OP_R ;
 int SMI_R_VALID ;
 int msleep (int) ;
 int netdev_warn (int ,char*) ;
 int rdl (struct pxa168_eth_private*,int ) ;
 scalar_t__ smi_wait_ready (struct pxa168_eth_private*) ;
 int wrl (struct pxa168_eth_private*,int ,int) ;

__attribute__((used)) static int pxa168_smi_read(struct mii_bus *bus, int phy_addr, int regnum)
{
 struct pxa168_eth_private *pep = bus->priv;
 int i = 0;
 int val;

 if (smi_wait_ready(pep)) {
  netdev_warn(pep->dev, "pxa168_eth: SMI bus busy timeout\n");
  return -ETIMEDOUT;
 }
 wrl(pep, SMI, (phy_addr << 16) | (regnum << 21) | SMI_OP_R);

 for (i = 0; !((val = rdl(pep, SMI)) & SMI_R_VALID); i++) {
  if (i == PHY_WAIT_ITERATIONS) {
   netdev_warn(pep->dev,
        "pxa168_eth: SMI bus read not valid\n");
   return -ENODEV;
  }
  msleep(10);
 }

 return val & 0xffff;
}
