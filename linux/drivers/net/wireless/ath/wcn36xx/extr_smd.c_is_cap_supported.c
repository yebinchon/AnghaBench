
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline u8 is_cap_supported(unsigned long caps, unsigned long flag)
{
 return caps & flag ? 1 : 0;
}
