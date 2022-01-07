
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_oob_region {int dummy; } ;
struct mtd_info {int dummy; } ;


 int ERANGE ;

__attribute__((used)) static int tegra_nand_ooblayout_no_free(struct mtd_info *mtd, int section,
     struct mtd_oob_region *oobregion)
{
 return -ERANGE;
}
