
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;
struct erase_info {int addr; int fail_addr; int len; } ;


 int FLASH_OP_ERASE ;
 int powernv_flash_async_op (struct mtd_info*,int ,int ,int ,int *,int *) ;

__attribute__((used)) static int powernv_flash_erase(struct mtd_info *mtd, struct erase_info *erase)
{
 int rc;

 rc = powernv_flash_async_op(mtd, FLASH_OP_ERASE, erase->addr,
   erase->len, ((void*)0), ((void*)0));
 if (rc)
  erase->fail_addr = erase->addr;

 return rc;
}
