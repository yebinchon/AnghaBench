
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cfg; } ;
struct atmel_pmecc_user {TYPE_1__ cache; } ;


 int PMECC_CFG_SECTOR1024 ;

__attribute__((used)) static int get_sectorsize(struct atmel_pmecc_user *user)
{
 return user->cache.cfg & PMECC_CFG_SECTOR1024 ? 1024 : 512;
}
