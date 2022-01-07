
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct macvlan_port {TYPE_1__* dev; } ;
struct TYPE_2__ {int dev_addr; } ;


 scalar_t__ ether_addr_equal_64bits (int ,unsigned char const*) ;
 int macvlan_addr_change (struct macvlan_port const*) ;
 scalar_t__ macvlan_hash_lookup (struct macvlan_port const*,unsigned char const*) ;
 int macvlan_passthru (struct macvlan_port const*) ;

__attribute__((used)) static bool macvlan_addr_busy(const struct macvlan_port *port,
         const unsigned char *addr)
{




 if (!macvlan_passthru(port) && !macvlan_addr_change(port) &&
     ether_addr_equal_64bits(port->dev->dev_addr, addr))
  return 1;

 if (macvlan_hash_lookup(port, addr))
  return 1;

 return 0;
}
