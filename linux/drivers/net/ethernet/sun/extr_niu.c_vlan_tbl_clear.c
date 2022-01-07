
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int dummy; } ;


 int ENET_VLAN_TBL (int) ;
 int ENET_VLAN_TBL_NUM_ENTRIES ;
 int nw64 (int ,int ) ;

__attribute__((used)) static void vlan_tbl_clear(struct niu *np)
{
 int i;

 for (i = 0; i < ENET_VLAN_TBL_NUM_ENTRIES; i++)
  nw64(ENET_VLAN_TBL(i), 0);
}
