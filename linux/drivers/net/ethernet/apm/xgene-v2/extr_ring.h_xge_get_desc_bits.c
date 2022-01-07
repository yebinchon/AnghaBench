
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static inline u64 xge_get_desc_bits(int pos, int len, u64 src)
{
 return (src >> pos) & ((1ULL << len) - 1);
}
