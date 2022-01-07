
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ grcan_ring_add (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline u32 grcan_ring_sub(u32 a, u32 b, u32 size)
{
 return grcan_ring_add(a, size - b, size);
}
