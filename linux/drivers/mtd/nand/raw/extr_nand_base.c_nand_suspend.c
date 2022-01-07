
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int suspended; int lock; } ;
struct mtd_info {int dummy; } ;


 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int nand_suspend(struct mtd_info *mtd)
{
 struct nand_chip *chip = mtd_to_nand(mtd);

 mutex_lock(&chip->lock);
 chip->suspended = 1;
 mutex_unlock(&chip->lock);

 return 0;
}
