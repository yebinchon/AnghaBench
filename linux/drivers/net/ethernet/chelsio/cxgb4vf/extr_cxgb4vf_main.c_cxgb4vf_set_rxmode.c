
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int set_rxmode (struct net_device*,int,int) ;

__attribute__((used)) static void cxgb4vf_set_rxmode(struct net_device *dev)
{

 set_rxmode(dev, -1, 0);
}
