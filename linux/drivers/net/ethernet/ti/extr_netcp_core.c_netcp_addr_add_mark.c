
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct netcp_intf {int dummy; } ;
struct netcp_addr {int flags; } ;
typedef enum netcp_addr_type { ____Placeholder_netcp_addr_type } netcp_addr_type ;


 int ADDR_NEW ;
 int ADDR_VALID ;
 int WARN_ON (int) ;
 struct netcp_addr* netcp_addr_add (struct netcp_intf*,int const*,int) ;
 struct netcp_addr* netcp_addr_find (struct netcp_intf*,int const*,int) ;

__attribute__((used)) static void netcp_addr_add_mark(struct netcp_intf *netcp, const u8 *addr,
    enum netcp_addr_type type)
{
 struct netcp_addr *naddr;

 naddr = netcp_addr_find(netcp, addr, type);
 if (naddr) {
  naddr->flags |= ADDR_VALID;
  return;
 }

 naddr = netcp_addr_add(netcp, addr, type);
 if (!WARN_ON(!naddr))
  naddr->flags |= ADDR_NEW;
}
