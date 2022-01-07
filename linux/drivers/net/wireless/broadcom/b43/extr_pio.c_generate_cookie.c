
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_pio_txqueue {scalar_t__ index; } ;
struct b43_pio_txpacket {int index; } ;



__attribute__((used)) static u16 generate_cookie(struct b43_pio_txqueue *q,
      struct b43_pio_txpacket *pack)
{
 u16 cookie;
 cookie = (((u16)q->index + 1) << 12);
 cookie |= pack->index;

 return cookie;
}
