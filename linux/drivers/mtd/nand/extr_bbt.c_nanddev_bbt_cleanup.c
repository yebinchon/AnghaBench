
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cache; } ;
struct nand_device {TYPE_1__ bbt; } ;


 int kfree (int ) ;

void nanddev_bbt_cleanup(struct nand_device *nand)
{
 kfree(nand->bbt.cache);
}
