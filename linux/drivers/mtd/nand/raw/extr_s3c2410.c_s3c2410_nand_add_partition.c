
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_nand_set {int nr_partitions; int partitions; int name; } ;
struct s3c2410_nand_mtd {int chip; } ;
struct s3c2410_nand_info {int dummy; } ;
struct mtd_info {int name; } ;


 int ENODEV ;
 int mtd_device_register (struct mtd_info*,int ,int ) ;
 struct mtd_info* nand_to_mtd (int *) ;

__attribute__((used)) static int s3c2410_nand_add_partition(struct s3c2410_nand_info *info,
          struct s3c2410_nand_mtd *mtd,
          struct s3c2410_nand_set *set)
{
 if (set) {
  struct mtd_info *mtdinfo = nand_to_mtd(&mtd->chip);

  mtdinfo->name = set->name;

  return mtd_device_register(mtdinfo, set->partitions,
        set->nr_partitions);
 }

 return -ENODEV;
}
