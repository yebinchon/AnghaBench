
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline int uvc_test_bit(const u8 *data, int bit)
{
 return (data[bit >> 3] >> (bit & 7)) & 1;
}
