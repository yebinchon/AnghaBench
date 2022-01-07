
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcmm_dec {int bits; } ;



__attribute__((used)) static bool rcmm_mode(const struct rcmm_dec *data)
{
 return !((0x000c0000 & data->bits) == 0x000c0000);
}
