
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int set_pflag_cqe_based_moder (struct net_device*,int,int) ;

__attribute__((used)) static int set_pflag_tx_cqe_based_moder(struct net_device *netdev, bool enable)
{
 return set_pflag_cqe_based_moder(netdev, enable, 0);
}
