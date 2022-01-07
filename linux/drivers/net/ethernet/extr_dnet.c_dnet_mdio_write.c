
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_bus {struct dnet* priv; } ;
struct dnet {int dummy; } ;


 int DNET_INTERNAL_GMII_MNG_CMD_FIN ;
 int DNET_INTERNAL_GMII_MNG_CTL_REG ;
 int DNET_INTERNAL_GMII_MNG_DAT_REG ;
 int cpu_relax () ;
 int dnet_readw_mac (struct dnet*,int ) ;
 int dnet_writew_mac (struct dnet*,int ,int) ;
 int pr_debug (char*,int,int,int) ;

__attribute__((used)) static int dnet_mdio_write(struct mii_bus *bus, int mii_id, int regnum,
      u16 value)
{
 struct dnet *bp = bus->priv;
 u16 tmp;

 pr_debug("mdio_write %02x:%02x <- %04x\n", mii_id, regnum, value);

 while (!(dnet_readw_mac(bp, DNET_INTERNAL_GMII_MNG_CTL_REG)
    & DNET_INTERNAL_GMII_MNG_CMD_FIN))
  cpu_relax();


 tmp = (1 << 13);


 mii_id &= 0x1f;
 regnum &= 0x1f;


 value &= 0xffff;


 tmp |= (mii_id << 8);
 tmp |= regnum;


 dnet_writew_mac(bp, DNET_INTERNAL_GMII_MNG_DAT_REG, value);


 dnet_writew_mac(bp, DNET_INTERNAL_GMII_MNG_CTL_REG, tmp);

 while (!(dnet_readw_mac(bp, DNET_INTERNAL_GMII_MNG_CTL_REG)
    & DNET_INTERNAL_GMII_MNG_CMD_FIN))
  cpu_relax();

 return 0;
}
