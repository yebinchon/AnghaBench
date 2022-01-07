
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u_char ;
struct map_info {int dummy; } ;
struct cfi_private {int dummy; } ;
typedef int map_word ;


 int cfi_build_cmd (int ,struct map_info*,struct cfi_private*) ;
 scalar_t__ cfi_build_cmd_addr (scalar_t__,struct map_info*,struct cfi_private*) ;
 int map_read (struct map_info*,scalar_t__) ;
 int map_write (struct map_info*,int ,scalar_t__) ;

uint32_t cfi_send_gen_cmd(u_char cmd, uint32_t cmd_addr, uint32_t base,
    struct map_info *map, struct cfi_private *cfi,
    int type, map_word *prev_val)
{
 map_word val;
 uint32_t addr = base + cfi_build_cmd_addr(cmd_addr, map, cfi);
 val = cfi_build_cmd(cmd, map, cfi);

 if (prev_val)
  *prev_val = map_read(map, addr);

 map_write(map, val, addr);

 return addr - base;
}
