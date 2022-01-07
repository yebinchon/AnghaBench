
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fman_mac {int tbiphy; int dtsec_drv_param; } ;


 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int BMCR_FULLDPLX ;
 int BMCR_SPEED100 ;
 int BMCR_SPEED1000 ;
 int EINVAL ;
 int MII_BMCR ;
 int is_init_done (int ) ;
 int phy_read (int ,int ) ;
 int phy_write (int ,int ,int) ;

int dtsec_restart_autoneg(struct fman_mac *dtsec)
{
 u16 tmp_reg16;

 if (!is_init_done(dtsec->dtsec_drv_param))
  return -EINVAL;

 tmp_reg16 = phy_read(dtsec->tbiphy, MII_BMCR);

 tmp_reg16 &= ~(BMCR_SPEED100 | BMCR_SPEED1000);
 tmp_reg16 |= (BMCR_ANENABLE | BMCR_ANRESTART |
        BMCR_FULLDPLX | BMCR_SPEED1000);

 phy_write(dtsec->tbiphy, MII_BMCR, tmp_reg16);

 return 0;
}
