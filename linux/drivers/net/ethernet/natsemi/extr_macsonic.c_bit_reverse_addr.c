
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char bitrev8 (unsigned char) ;

__attribute__((used)) static inline void bit_reverse_addr(unsigned char addr[6])
{
 int i;

 for(i = 0; i < 6; i++)
  addr[i] = bitrev8(addr[i]);
}
