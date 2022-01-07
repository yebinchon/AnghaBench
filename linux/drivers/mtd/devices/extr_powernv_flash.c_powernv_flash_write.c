
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_info {int dummy; } ;
typedef int loff_t ;


 int FLASH_OP_WRITE ;
 int powernv_flash_async_op (struct mtd_info*,int ,int ,size_t,size_t*,int *) ;

__attribute__((used)) static int powernv_flash_write(struct mtd_info *mtd, loff_t to, size_t len,
       size_t *retlen, const u_char *buf)
{
 return powernv_flash_async_op(mtd, FLASH_OP_WRITE, to,
   len, retlen, (u_char *)buf);
}
