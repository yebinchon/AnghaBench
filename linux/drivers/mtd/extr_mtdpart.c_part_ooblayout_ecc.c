
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_part {int parent; } ;
struct mtd_oob_region {int dummy; } ;
struct mtd_info {int dummy; } ;


 int mtd_ooblayout_ecc (int ,int,struct mtd_oob_region*) ;
 struct mtd_part* mtd_to_part (struct mtd_info*) ;

__attribute__((used)) static int part_ooblayout_ecc(struct mtd_info *mtd, int section,
         struct mtd_oob_region *oobregion)
{
 struct mtd_part *part = mtd_to_part(mtd);

 return mtd_ooblayout_ecc(part->parent, section, oobregion);
}
