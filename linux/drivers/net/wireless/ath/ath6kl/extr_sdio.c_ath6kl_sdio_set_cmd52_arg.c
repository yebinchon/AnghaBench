
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static inline void ath6kl_sdio_set_cmd52_arg(u32 *arg, u8 write, u8 raw,
          unsigned int address,
          unsigned char val)
{
 const u8 func = 0;

 *arg = ((write & 1) << 31) |
        ((func & 0x7) << 28) |
        ((raw & 1) << 27) |
        (1 << 26) |
        ((address & 0x1FFFF) << 9) |
        (1 << 8) |
        (val & 0xFF);
}
