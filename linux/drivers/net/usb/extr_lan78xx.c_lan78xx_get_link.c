
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {TYPE_1__* phydev; } ;
struct TYPE_2__ {int link; } ;


 int phy_read_status (TYPE_1__*) ;

__attribute__((used)) static u32 lan78xx_get_link(struct net_device *net)
{
 phy_read_status(net->phydev);

 return net->phydev->link;
}
