
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {struct cfi_private* fldrv_priv; } ;
struct flchip {scalar_t__ start; } ;
struct cfi_private {int device_type; int addr_unlock1; int addr_unlock2; } ;
typedef scalar_t__ loff_t ;


 int INVALIDATE_CACHED_RANGE (struct map_info*,scalar_t__,size_t) ;
 int cfi_send_gen_cmd (int,int ,scalar_t__,struct map_info*,struct cfi_private*,int ,int *) ;

__attribute__((used)) static inline void otp_enter(struct map_info *map, struct flchip *chip,
        loff_t adr, size_t len)
{
 struct cfi_private *cfi = map->fldrv_priv;

 cfi_send_gen_cmd(0xAA, cfi->addr_unlock1, chip->start, map, cfi,
    cfi->device_type, ((void*)0));
 cfi_send_gen_cmd(0x55, cfi->addr_unlock2, chip->start, map, cfi,
    cfi->device_type, ((void*)0));
 cfi_send_gen_cmd(0x88, cfi->addr_unlock1, chip->start, map, cfi,
    cfi->device_type, ((void*)0));

 INVALIDATE_CACHED_RANGE(map, chip->start + adr, len);
}
