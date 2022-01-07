
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;



__attribute__((used)) static inline void ath6kl_sdio_set_cmd53_arg(u32 *arg, u8 rw, u8 func,
          u8 mode, u8 opcode, u32 addr,
          u16 blksz)
{
 *arg = (((rw & 1) << 31) |
  ((func & 0x7) << 28) |
  ((mode & 1) << 27) |
  ((opcode & 1) << 26) |
  ((addr & 0x1FFFF) << 9) |
  (blksz & 0x1FF));
}
