
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netcp_intf {int dev; } ;
struct netcp_addr {int node; } ;


 int devm_kfree (int ,struct netcp_addr*) ;
 int list_del (int *) ;

__attribute__((used)) static void netcp_addr_del(struct netcp_intf *netcp, struct netcp_addr *naddr)
{
 list_del(&naddr->node);
 devm_kfree(netcp->dev, naddr);
}
