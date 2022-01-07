
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct fddi_addr {int * a; } ;



__attribute__((used)) static inline int is_broadcast(const struct fddi_addr *addr)
{
 return *(u_short *)(&addr->a[0]) == 0xffff &&
        *(u_short *)(&addr->a[2]) == 0xffff &&
        *(u_short *)(&addr->a[4]) == 0xffff;
}
