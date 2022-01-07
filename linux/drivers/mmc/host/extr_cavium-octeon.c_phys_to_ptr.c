
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;



__attribute__((used)) static inline void *phys_to_ptr(u64 address)
{
 return (void *)(address | (1ull << 63));
}
