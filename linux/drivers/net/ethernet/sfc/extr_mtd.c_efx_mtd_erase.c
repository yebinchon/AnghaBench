
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_info {struct efx_nic* priv; } ;
struct erase_info {int len; int addr; } ;
struct efx_nic {TYPE_1__* type; } ;
struct TYPE_2__ {int (* mtd_erase ) (struct mtd_info*,int ,int ) ;} ;


 int stub1 (struct mtd_info*,int ,int ) ;

__attribute__((used)) static int efx_mtd_erase(struct mtd_info *mtd, struct erase_info *erase)
{
 struct efx_nic *efx = mtd->priv;

 return efx->type->mtd_erase(mtd, erase->addr, erase->len);
}
