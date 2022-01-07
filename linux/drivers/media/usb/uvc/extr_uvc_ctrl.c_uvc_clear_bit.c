
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline void uvc_clear_bit(u8 *data, int bit)
{
 data[bit >> 3] &= ~(1 << (bit & 7));
}
