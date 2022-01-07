
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int NB8800_RXC_CR ;
 int RCR_EN ;
 int nb8800_setl (int ,int ,int ) ;
 int netdev_priv (struct net_device*) ;

__attribute__((used)) static void nb8800_start_rx(struct net_device *dev)
{
 nb8800_setl(netdev_priv(dev), NB8800_RXC_CR, RCR_EN);
}
