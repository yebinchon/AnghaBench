
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_probe_info {int* cur; int** phy_port; } ;


 size_t PHY_TYPE_PCS ;
 size_t PHY_TYPE_PMA_PMD ;

__attribute__((used)) static int port_has_10g(struct phy_probe_info *p, int port)
{
 int i;

 for (i = 0; i < p->cur[PHY_TYPE_PMA_PMD]; i++) {
  if (p->phy_port[PHY_TYPE_PMA_PMD][i] == port)
   return 1;
 }
 for (i = 0; i < p->cur[PHY_TYPE_PCS]; i++) {
  if (p->phy_port[PHY_TYPE_PCS][i] == port)
   return 1;
 }

 return 0;
}
