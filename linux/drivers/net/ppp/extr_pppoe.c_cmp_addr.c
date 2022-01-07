
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pppoe_addr {scalar_t__ sid; int remote; } ;
typedef scalar_t__ __be16 ;


 scalar_t__ ether_addr_equal (int ,char*) ;

__attribute__((used)) static inline int cmp_addr(struct pppoe_addr *a, __be16 sid, char *addr)
{
 return a->sid == sid && ether_addr_equal(a->remote, addr);
}
