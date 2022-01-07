
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ s_addr; } ;
struct TYPE_4__ {TYPE_1__ sin_addr; } ;
union vxlan_addr {TYPE_2__ sin; } ;



__attribute__((used)) static inline
bool vxlan_addr_equal(const union vxlan_addr *a, const union vxlan_addr *b)
{
 return a->sin.sin_addr.s_addr == b->sin.sin_addr.s_addr;
}
