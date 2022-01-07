
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int __sh_eth_get_regs (struct net_device*,int *) ;

__attribute__((used)) static int sh_eth_get_regs_len(struct net_device *ndev)
{
 return __sh_eth_get_regs(ndev, ((void*)0));
}
