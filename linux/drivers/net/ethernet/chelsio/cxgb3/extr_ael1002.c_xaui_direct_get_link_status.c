
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prtad; } ;
struct cphy {int adapter; TYPE_1__ mdio; } ;


 int A_XGM_SERDES_STAT0 ;
 int A_XGM_SERDES_STAT1 ;
 int A_XGM_SERDES_STAT2 ;
 int A_XGM_SERDES_STAT3 ;
 int DUPLEX_FULL ;
 unsigned int F_LOWSIG0 ;
 int SPEED_10000 ;
 int XGM_REG (int ,int) ;
 unsigned int t3_read_reg (int ,int ) ;

__attribute__((used)) static int xaui_direct_get_link_status(struct cphy *phy, int *link_ok,
           int *speed, int *duplex, int *fc)
{
 if (link_ok) {
  unsigned int status;
  int prtad = phy->mdio.prtad;

  status = t3_read_reg(phy->adapter,
         XGM_REG(A_XGM_SERDES_STAT0, prtad)) |
      t3_read_reg(phy->adapter,
        XGM_REG(A_XGM_SERDES_STAT1, prtad)) |
      t3_read_reg(phy->adapter,
    XGM_REG(A_XGM_SERDES_STAT2, prtad)) |
      t3_read_reg(phy->adapter,
    XGM_REG(A_XGM_SERDES_STAT3, prtad));
  *link_ok = !(status & F_LOWSIG0);
 }
 if (speed)
  *speed = SPEED_10000;
 if (duplex)
  *duplex = DUPLEX_FULL;
 return 0;
}
