
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;
struct fddi_addr {int * a; } ;



__attribute__((used)) static inline int is_equal(const struct fddi_addr *addr1,
      const struct fddi_addr *addr2)
{
 return *(u_short *)(&addr1->a[0]) == *(u_short *)(&addr2->a[0]) &&
        *(u_short *)(&addr1->a[2]) == *(u_short *)(&addr2->a[2]) &&
        *(u_short *)(&addr1->a[4]) == *(u_short *)(&addr2->a[4]);
}
