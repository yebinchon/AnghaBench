
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;



__attribute__((used)) static inline void ip6_fill_mask(__be32 *mask)
{
 mask[0] = mask[1] = mask[2] = mask[3] = ~(__be32)0;
}
