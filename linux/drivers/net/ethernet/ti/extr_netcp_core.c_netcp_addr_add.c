
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct netcp_intf {int addr_list; int dev; } ;
struct netcp_addr {int type; int node; int addr; struct netcp_intf* netcp; scalar_t__ flags; } ;
typedef enum netcp_addr_type { ____Placeholder_netcp_addr_type } netcp_addr_type ;


 int GFP_ATOMIC ;
 struct netcp_addr* devm_kmalloc (int ,int,int ) ;
 int eth_zero_addr (int ) ;
 int ether_addr_copy (int ,int const*) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static struct netcp_addr *netcp_addr_add(struct netcp_intf *netcp,
      const u8 *addr,
      enum netcp_addr_type type)
{
 struct netcp_addr *naddr;

 naddr = devm_kmalloc(netcp->dev, sizeof(*naddr), GFP_ATOMIC);
 if (!naddr)
  return ((void*)0);

 naddr->type = type;
 naddr->flags = 0;
 naddr->netcp = netcp;
 if (addr)
  ether_addr_copy(naddr->addr, addr);
 else
  eth_zero_addr(naddr->addr);
 list_add_tail(&naddr->node, &netcp->addr_list);

 return naddr;
}
