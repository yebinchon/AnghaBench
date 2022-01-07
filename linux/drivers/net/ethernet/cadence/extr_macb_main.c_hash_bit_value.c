
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;



__attribute__((used)) static inline int hash_bit_value(int bitnr, __u8 *addr)
{
 if (addr[bitnr / 8] & (1 << (bitnr % 8)))
  return 1;
 return 0;
}
