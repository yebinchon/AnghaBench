
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pending; int dat; } ;
union cvmx_smix_wr_dat {scalar_t__ u64; TYPE_2__ s; } ;
struct TYPE_3__ {unsigned int phy_op; int phy_adr; int reg_adr; } ;
union cvmx_smix_cmd {scalar_t__ u64; TYPE_1__ s; } ;
typedef int u16 ;
struct mii_bus {struct cavium_mdiobus* priv; } ;
struct cavium_mdiobus {scalar_t__ register_base; } ;


 int C22 ;
 int EIO ;
 int MII_ADDR_C45 ;
 scalar_t__ SMI_CMD ;
 scalar_t__ SMI_WR_DAT ;
 int __delay (int) ;
 int cavium_mdiobus_c45_addr (struct cavium_mdiobus*,int,int) ;
 int cavium_mdiobus_set_mode (struct cavium_mdiobus*,int ) ;
 scalar_t__ oct_mdio_readq (scalar_t__) ;
 int oct_mdio_writeq (scalar_t__,scalar_t__) ;

int cavium_mdiobus_write(struct mii_bus *bus, int phy_id, int regnum, u16 val)
{
 struct cavium_mdiobus *p = bus->priv;
 union cvmx_smix_cmd smi_cmd;
 union cvmx_smix_wr_dat smi_wr;
 unsigned int op = 0;
 int timeout = 1000;

 if (regnum & MII_ADDR_C45) {
  int r = cavium_mdiobus_c45_addr(p, phy_id, regnum);

  if (r < 0)
   return r;

  regnum = (regnum >> 16) & 0x1f;
  op = 1;
 } else {
  cavium_mdiobus_set_mode(p, C22);
 }

 smi_wr.u64 = 0;
 smi_wr.s.dat = val;
 oct_mdio_writeq(smi_wr.u64, p->register_base + SMI_WR_DAT);

 smi_cmd.u64 = 0;
 smi_cmd.s.phy_op = op;
 smi_cmd.s.phy_adr = phy_id;
 smi_cmd.s.reg_adr = regnum;
 oct_mdio_writeq(smi_cmd.u64, p->register_base + SMI_CMD);

 do {



  __delay(1000);
  smi_wr.u64 = oct_mdio_readq(p->register_base + SMI_WR_DAT);
 } while (smi_wr.s.pending && --timeout);

 if (timeout <= 0)
  return -EIO;

 return 0;
}
