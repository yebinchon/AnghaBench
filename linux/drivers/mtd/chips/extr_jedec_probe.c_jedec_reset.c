
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct map_info {int dummy; } ;
struct cfi_private {int device_type; scalar_t__ addr_unlock1; scalar_t__ addr_unlock2; } ;


 int cfi_send_gen_cmd (int,scalar_t__,int ,struct map_info*,struct cfi_private*,int ,int *) ;
 int pr_debug (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void jedec_reset(u32 base, struct map_info *map, struct cfi_private *cfi)
{
 if (cfi->addr_unlock1) {
  pr_debug( "reset unlock called %x %x \n",
         cfi->addr_unlock1,cfi->addr_unlock2);
  cfi_send_gen_cmd(0xaa, cfi->addr_unlock1, base, map, cfi, cfi->device_type, ((void*)0));
  cfi_send_gen_cmd(0x55, cfi->addr_unlock2, base, map, cfi, cfi->device_type, ((void*)0));
 }

 cfi_send_gen_cmd(0xF0, cfi->addr_unlock1, base, map, cfi, cfi->device_type, ((void*)0));





 cfi_send_gen_cmd(0xFF, 0, base, map, cfi, cfi->device_type, ((void*)0));

}
