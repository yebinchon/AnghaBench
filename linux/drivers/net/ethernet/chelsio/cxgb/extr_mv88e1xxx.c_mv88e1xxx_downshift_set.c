
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cphy {int dummy; } ;


 int MV88E1XXX_EXT_PHY_SPECIFIC_CNTRL_REGISTER ;
 int M_DOWNSHIFT_CNT ;
 int V_DOWNSHIFT_CNT (int) ;
 int V_DOWNSHIFT_ENABLE ;
 int simple_mdio_read (struct cphy*,int ,int*) ;
 int simple_mdio_write (struct cphy*,int ,int) ;

__attribute__((used)) static int mv88e1xxx_downshift_set(struct cphy *cphy, int downshift_enable)
{
 u32 val;

 (void) simple_mdio_read(cphy,
  MV88E1XXX_EXT_PHY_SPECIFIC_CNTRL_REGISTER, &val);





 val &= ~(V_DOWNSHIFT_ENABLE | V_DOWNSHIFT_CNT(M_DOWNSHIFT_CNT));

 if (downshift_enable)
  val |= V_DOWNSHIFT_ENABLE | V_DOWNSHIFT_CNT(2);
 (void) simple_mdio_write(cphy,
   MV88E1XXX_EXT_PHY_SPECIFIC_CNTRL_REGISTER, val);
 return 0;
}
