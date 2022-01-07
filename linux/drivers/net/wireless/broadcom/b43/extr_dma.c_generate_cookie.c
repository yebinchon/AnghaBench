
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_dmaring {scalar_t__ index; } ;


 int B43_WARN_ON (int) ;

__attribute__((used)) static u16 generate_cookie(struct b43_dmaring *ring, int slot)
{
 u16 cookie;
 cookie = (((u16)ring->index + 1) << 12);
 B43_WARN_ON(slot & ~0x0FFF);
 cookie |= (u16)slot;

 return cookie;
}
