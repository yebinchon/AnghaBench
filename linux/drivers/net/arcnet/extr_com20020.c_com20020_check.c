
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; } ;
struct arcnet_local {int setup; int clockm; int clockp; int setup2; int config; int timeout; int backplane; } ;


 int AUTOINCflag ;
 int CFLAGScmd ;
 int COM20020_REG_RW_MEMDATA ;
 int COM20020_REG_R_STATUS ;
 int COM20020_REG_W_ADDR_HI ;
 int COM20020_REG_W_ADDR_LO ;
 int COM20020_REG_W_COMMAND ;
 int COM20020_REG_W_CONFIG ;
 int COM20020_REG_W_XREG ;
 int CONFIGclear ;
 int D_INIT_REASONS ;
 int D_NORMAL ;
 int ENODEV ;
 int NORXflag ;
 int P1MODE ;
 int RDDATAflag ;
 int RESETcfg ;
 int RESETclear ;
 int RESETflag ;
 int RESETtime ;
 int STARTIOcmd ;
 int SUB_NODE ;
 int SUB_SETUP1 ;
 int SUB_SETUP2 ;
 int TESTvalue ;
 int TXFREEflag ;
 int XTOcfg (int) ;
 int arc_printk (int ,struct net_device*,char*,int) ;
 int arcnet_inb (int,int ) ;
 int arcnet_outb (int,int,int ) ;
 int com20020_set_subaddress (struct arcnet_local*,int,int ) ;
 int mdelay (int) ;
 struct arcnet_local* netdev_priv (struct net_device*) ;
 int udelay (int) ;

int com20020_check(struct net_device *dev)
{
 int ioaddr = dev->base_addr, status;
 struct arcnet_local *lp = netdev_priv(dev);

 arcnet_outb(XTOcfg(3) | RESETcfg, ioaddr, COM20020_REG_W_CONFIG);
 udelay(5);
 arcnet_outb(XTOcfg(3), ioaddr, COM20020_REG_W_CONFIG);
 mdelay(RESETtime);

 lp->setup = lp->clockm ? 0 : (lp->clockp << 1);
 lp->setup2 = (lp->clockm << 4) | 8;



 lp->setup = lp->setup | P1MODE;

 com20020_set_subaddress(lp, ioaddr, SUB_SETUP1);
 arcnet_outb(lp->setup, ioaddr, COM20020_REG_W_XREG);

 if (lp->clockm != 0) {
  com20020_set_subaddress(lp, ioaddr, SUB_SETUP2);
  arcnet_outb(lp->setup2, ioaddr, COM20020_REG_W_XREG);


  mdelay(1);
  arcnet_outb(STARTIOcmd, ioaddr, COM20020_REG_W_COMMAND);
 }

 lp->config = (lp->timeout << 3) | (lp->backplane << 2) | SUB_NODE;

 arcnet_outb(lp->config, ioaddr, COM20020_REG_W_CONFIG);
 arcnet_outb(0x42, ioaddr, COM20020_REG_W_XREG);

 status = arcnet_inb(ioaddr, COM20020_REG_R_STATUS);

 if ((status & 0x99) != (NORXflag | TXFREEflag | RESETflag)) {
  arc_printk(D_NORMAL, dev, "status invalid (%Xh).\n", status);
  return -ENODEV;
 }
 arc_printk(D_INIT_REASONS, dev, "status after reset: %X\n", status);

 arcnet_outb(CFLAGScmd | RESETclear | CONFIGclear,
      ioaddr, COM20020_REG_W_COMMAND);
 status = arcnet_inb(ioaddr, COM20020_REG_R_STATUS);
 arc_printk(D_INIT_REASONS, dev, "status after reset acknowledged: %X\n",
     status);


 arcnet_outb(0 | RDDATAflag | AUTOINCflag,
      ioaddr, COM20020_REG_W_ADDR_HI);
 arcnet_outb(0, ioaddr, COM20020_REG_W_ADDR_LO);

 status = arcnet_inb(ioaddr, COM20020_REG_RW_MEMDATA);
 if (status != TESTvalue) {
  arc_printk(D_NORMAL, dev, "Signature byte not found (%02Xh != D1h).\n",
      status);
  return -ENODEV;
 }
 return 0;
}
