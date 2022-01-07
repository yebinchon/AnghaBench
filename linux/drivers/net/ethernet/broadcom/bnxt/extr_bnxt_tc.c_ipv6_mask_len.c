
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int * s6_addr32; } ;


 scalar_t__ inet_mask_len (int ) ;

__attribute__((used)) static int ipv6_mask_len(struct in6_addr *mask)
{
 int mask_len = 0, i;

 for (i = 0; i < 4; i++)
  mask_len += inet_mask_len(mask->s6_addr32[i]);

 return mask_len;
}
