
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dat; scalar_t__ pending; } ;
union cvmx_smix_wr_dat {scalar_t__ u64; TYPE_2__ s; } ;
struct TYPE_3__ {int phy_adr; int reg_adr; scalar_t__ phy_op; } ;
union cvmx_smix_cmd {scalar_t__ u64; TYPE_1__ s; } ;
struct cavium_mdiobus {scalar_t__ register_base; } ;


 int C45 ;
 int EIO ;
 scalar_t__ SMI_CMD ;
 scalar_t__ SMI_WR_DAT ;
 int __delay (int) ;
 int cavium_mdiobus_set_mode (struct cavium_mdiobus*,int ) ;
 scalar_t__ oct_mdio_readq (scalar_t__) ;
 int oct_mdio_writeq (scalar_t__,scalar_t__) ;

__attribute__((used)) static int cavium_mdiobus_c45_addr(struct cavium_mdiobus *p,
       int phy_id, int regnum)
{
 union cvmx_smix_cmd smi_cmd;
 union cvmx_smix_wr_dat smi_wr;
 int timeout = 1000;

 cavium_mdiobus_set_mode(p, C45);

 smi_wr.u64 = 0;
 smi_wr.s.dat = regnum & 0xffff;
 oct_mdio_writeq(smi_wr.u64, p->register_base + SMI_WR_DAT);

 regnum = (regnum >> 16) & 0x1f;

 smi_cmd.u64 = 0;
 smi_cmd.s.phy_op = 0;
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
