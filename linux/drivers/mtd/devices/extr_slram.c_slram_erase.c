
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_info {TYPE_1__* priv; } ;
struct erase_info {int len; scalar_t__ addr; } ;
struct TYPE_2__ {scalar_t__ start; } ;
typedef TYPE_1__ slram_priv_t ;


 int memset (scalar_t__,int,int ) ;

__attribute__((used)) static int slram_erase(struct mtd_info *mtd, struct erase_info *instr)
{
 slram_priv_t *priv = mtd->priv;

 memset(priv->start + instr->addr, 0xff, instr->len);

 return(0);
}
