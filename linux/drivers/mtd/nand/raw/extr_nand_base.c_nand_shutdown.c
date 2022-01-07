
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 int nand_suspend (struct mtd_info*) ;

__attribute__((used)) static void nand_shutdown(struct mtd_info *mtd)
{
 nand_suspend(mtd);
}
