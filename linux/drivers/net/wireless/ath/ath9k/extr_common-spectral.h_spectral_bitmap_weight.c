
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline u8 spectral_bitmap_weight(u8 *bins)
{
 return bins[0] & 0x3f;
}
