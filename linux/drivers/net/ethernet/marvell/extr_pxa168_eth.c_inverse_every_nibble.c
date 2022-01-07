
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ETH_ALEN ;
 unsigned char flip_8_bits (unsigned char) ;

__attribute__((used)) static void inverse_every_nibble(unsigned char *mac_addr)
{
 int i;
 for (i = 0; i < ETH_ALEN; i++)
  mac_addr[i] = flip_8_bits(mac_addr[i]);
}
