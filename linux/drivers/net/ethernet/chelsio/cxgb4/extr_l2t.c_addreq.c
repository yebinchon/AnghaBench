
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct l2t_entry {int const* addr; scalar_t__ v6; } ;



__attribute__((used)) static int addreq(const struct l2t_entry *e, const u32 *addr)
{
 if (e->v6)
  return (e->addr[0] ^ addr[0]) | (e->addr[1] ^ addr[1]) |
         (e->addr[2] ^ addr[2]) | (e->addr[3] ^ addr[3]);
 return e->addr[0] ^ addr[0];
}
