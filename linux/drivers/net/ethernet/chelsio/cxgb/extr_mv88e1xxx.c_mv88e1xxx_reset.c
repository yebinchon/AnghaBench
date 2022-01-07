
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cphy {int dummy; } ;


 int BMCR_RESET ;
 int MII_BMCR ;
 int mdio_set_bit (struct cphy*,int ,int) ;
 int simple_mdio_read (struct cphy*,int ,int*) ;
 int udelay (int) ;

__attribute__((used)) static int mv88e1xxx_reset(struct cphy *cphy, int wait)
{
 u32 ctl;
 int time_out = 1000;

 mdio_set_bit(cphy, MII_BMCR, BMCR_RESET);

 do {
  (void) simple_mdio_read(cphy, MII_BMCR, &ctl);
  ctl &= BMCR_RESET;
  if (ctl)
   udelay(1);
 } while (ctl && --time_out);

 return ctl ? -1 : 0;
}
