
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static uint64_t sbmac_addr2reg(unsigned char *ptr)
{
 uint64_t reg = 0;

 ptr += 6;

 reg |= (uint64_t) *(--ptr);
 reg <<= 8;
 reg |= (uint64_t) *(--ptr);
 reg <<= 8;
 reg |= (uint64_t) *(--ptr);
 reg <<= 8;
 reg |= (uint64_t) *(--ptr);
 reg <<= 8;
 reg |= (uint64_t) *(--ptr);
 reg <<= 8;
 reg |= (uint64_t) *(--ptr);

 return reg;
}
