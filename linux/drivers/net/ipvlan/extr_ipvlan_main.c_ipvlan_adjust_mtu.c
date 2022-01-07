
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int mtu; } ;
struct ipvl_dev {TYPE_1__* dev; } ;
struct TYPE_2__ {int mtu; } ;



__attribute__((used)) static void ipvlan_adjust_mtu(struct ipvl_dev *ipvlan, struct net_device *dev)
{
 ipvlan->dev->mtu = dev->mtu;
}
