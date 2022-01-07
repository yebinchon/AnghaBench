
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct port_info {int link_config; int phy; TYPE_2__* dev; struct cmac* mac; } ;
struct cmac {TYPE_1__* ops; } ;
struct TYPE_4__ {int dev_addr; } ;
struct TYPE_3__ {int (* enable ) (struct cmac*,int) ;int (* macaddress_set ) (struct cmac*,int ) ;int (* reset ) (struct cmac*) ;} ;


 int MAC_DIRECTION_RX ;
 int MAC_DIRECTION_TX ;
 int stub1 (struct cmac*) ;
 int stub2 (struct cmac*,int ) ;
 int stub3 (struct cmac*,int) ;
 int t1_link_start (int ,struct cmac*,int *) ;
 int t1_set_rxmode (TYPE_2__*) ;

__attribute__((used)) static void link_start(struct port_info *p)
{
 struct cmac *mac = p->mac;

 mac->ops->reset(mac);
 if (mac->ops->macaddress_set)
  mac->ops->macaddress_set(mac, p->dev->dev_addr);
 t1_set_rxmode(p->dev);
 t1_link_start(p->phy, mac, &p->link_config);
 mac->ops->enable(mac, MAC_DIRECTION_RX | MAC_DIRECTION_TX);
}
