
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ETH_ALEN ;

__attribute__((used)) static void nibble_swap_every_byte(unsigned char *mac_addr)
{
 int i;
 for (i = 0; i < ETH_ALEN; i++) {
  mac_addr[i] = ((mac_addr[i] & 0x0f) << 4) |
    ((mac_addr[i] & 0xf0) >> 4);
 }
}
