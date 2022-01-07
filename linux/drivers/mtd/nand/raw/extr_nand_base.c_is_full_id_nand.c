
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_flash_dev {int id_len; } ;



__attribute__((used)) static inline bool is_full_id_nand(struct nand_flash_dev *type)
{
 return type->id_len;
}
