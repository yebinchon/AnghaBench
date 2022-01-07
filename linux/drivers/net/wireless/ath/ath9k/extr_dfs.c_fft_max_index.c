
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline int fft_max_index(u8 *bins)
{
 return (bins[2] & 0xfc) >> 2;
}
