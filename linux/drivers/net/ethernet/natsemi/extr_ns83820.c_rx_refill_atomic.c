
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int GFP_ATOMIC ;
 int rx_refill (struct net_device*,int ) ;

__attribute__((used)) static void rx_refill_atomic(struct net_device *ndev)
{
 rx_refill(ndev, GFP_ATOMIC);
}
