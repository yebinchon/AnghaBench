
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r852_device {int dummy; } ;
struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;


 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 struct r852_device* nand_get_controller_data (struct nand_chip*) ;

__attribute__((used)) static inline struct r852_device *r852_get_dev(struct mtd_info *mtd)
{
 struct nand_chip *chip = mtd_to_nand(mtd);
 return nand_get_controller_data(chip);
}
