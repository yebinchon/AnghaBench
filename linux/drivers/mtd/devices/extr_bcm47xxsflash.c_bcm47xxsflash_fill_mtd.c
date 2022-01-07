
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* parent; } ;
struct mtd_info {char* name; int writesize; int writebufsize; int _write; int _read; int _erase; int erasesize; int size; int flags; int type; TYPE_1__ dev; struct bcm47xxsflash* priv; } ;
struct device {int dummy; } ;
struct bcm47xxsflash {int blocksize; int size; struct mtd_info mtd; } ;


 int MTD_CAP_NORFLASH ;
 int MTD_NORFLASH ;
 int bcm47xxsflash_erase ;
 int bcm47xxsflash_read ;
 int bcm47xxsflash_write ;

__attribute__((used)) static void bcm47xxsflash_fill_mtd(struct bcm47xxsflash *b47s,
       struct device *dev)
{
 struct mtd_info *mtd = &b47s->mtd;

 mtd->priv = b47s;
 mtd->dev.parent = dev;
 mtd->name = "bcm47xxsflash";

 mtd->type = MTD_NORFLASH;
 mtd->flags = MTD_CAP_NORFLASH;
 mtd->size = b47s->size;
 mtd->erasesize = b47s->blocksize;
 mtd->writesize = 1;
 mtd->writebufsize = 1;

 mtd->_erase = bcm47xxsflash_erase;
 mtd->_read = bcm47xxsflash_read;
 mtd->_write = bcm47xxsflash_write;
}
