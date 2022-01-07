
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct spear_snor_flash {int erase_cmd; } ;



__attribute__((used)) static inline u32
get_sector_erase_cmd(struct spear_snor_flash *flash, u32 offset)
{
 u32 cmd;
 u8 *x = (u8 *)&cmd;

 x[0] = flash->erase_cmd;
 x[1] = offset >> 16;
 x[2] = offset >> 8;
 x[3] = offset;

 return cmd;
}
