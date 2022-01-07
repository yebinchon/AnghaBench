
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c2410_nand_info {int dummy; } ;
struct mtd_info {int dummy; } ;
struct TYPE_2__ {struct s3c2410_nand_info* info; } ;


 TYPE_1__* s3c2410_nand_mtd_toours (struct mtd_info*) ;

__attribute__((used)) static struct s3c2410_nand_info *s3c2410_nand_mtd_toinfo(struct mtd_info *mtd)
{
 return s3c2410_nand_mtd_toours(mtd)->info;
}
