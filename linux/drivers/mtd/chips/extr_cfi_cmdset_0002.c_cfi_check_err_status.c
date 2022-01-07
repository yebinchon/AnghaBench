
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {int name; struct cfi_private* fldrv_priv; } ;
struct flchip {int start; } ;
struct cfi_private {int device_type; int addr_unlock1; } ;
typedef int map_word ;


 unsigned long CFI_SR_ESB ;
 unsigned long CFI_SR_PSB ;
 unsigned long CFI_SR_SLSB ;
 unsigned long CFI_SR_WBASB ;
 int CMD (int) ;
 unsigned long MERGESTATUS (int ) ;
 int cfi_send_gen_cmd (int,int ,int ,struct map_info*,struct cfi_private*,int ,int *) ;
 int cfi_use_status_reg (struct cfi_private*) ;
 int map_read (struct map_info*,unsigned long) ;
 scalar_t__ map_word_bitsset (struct map_info*,int ,int ) ;
 int pr_err (char*,int ,unsigned long) ;

__attribute__((used)) static void cfi_check_err_status(struct map_info *map, struct flchip *chip,
     unsigned long adr)
{
 struct cfi_private *cfi = map->fldrv_priv;
 map_word status;

 if (!cfi_use_status_reg(cfi))
  return;

 cfi_send_gen_cmd(0x70, cfi->addr_unlock1, chip->start, map, cfi,
    cfi->device_type, ((void*)0));
 status = map_read(map, adr);

 if (map_word_bitsset(map, status, CMD(0x3a))) {
  unsigned long chipstatus = MERGESTATUS(status);

  if (chipstatus & CFI_SR_ESB)
   pr_err("%s erase operation failed, status %lx\n",
          map->name, chipstatus);
  if (chipstatus & CFI_SR_PSB)
   pr_err("%s program operation failed, status %lx\n",
          map->name, chipstatus);
  if (chipstatus & CFI_SR_WBASB)
   pr_err("%s buffer program command aborted, status %lx\n",
          map->name, chipstatus);
  if (chipstatus & CFI_SR_SLSB)
   pr_err("%s sector write protected, status %lx\n",
          map->name, chipstatus);
 }
}
