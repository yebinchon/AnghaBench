
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_probe_info {int* cur; int** phy_port; } ;


 size_t PHY_TYPE_MII ;

__attribute__((used)) static int count_1g_ports(struct phy_probe_info *p, int *lowest)
{
 *lowest = 32;
 if (p->cur[PHY_TYPE_MII])
  *lowest = p->phy_port[PHY_TYPE_MII][0];

 return p->cur[PHY_TYPE_MII];
}
