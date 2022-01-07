
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pppoe_addr {scalar_t__ sid; int remote; } ;


 scalar_t__ ether_addr_equal (int ,int ) ;

__attribute__((used)) static inline int cmp_2_addr(struct pppoe_addr *a, struct pppoe_addr *b)
{
 return a->sid == b->sid && ether_addr_equal(a->remote, b->remote);
}
