
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cphy {int dummy; } ;


 int MDIO_DEVAD_NONE ;
 int VSC8211_INTR_STATUS ;
 int t3_mdio_read (struct cphy*,int ,int ,int *) ;

__attribute__((used)) static int vsc8211_intr_clear(struct cphy *cphy)
{
 u32 val;


 return t3_mdio_read(cphy, MDIO_DEVAD_NONE, VSC8211_INTR_STATUS, &val);
}
