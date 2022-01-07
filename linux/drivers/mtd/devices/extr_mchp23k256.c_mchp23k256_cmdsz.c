
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mchp23k256_flash {TYPE_1__* caps; } ;
struct TYPE_2__ {int addr_width; } ;



__attribute__((used)) static int mchp23k256_cmdsz(struct mchp23k256_flash *flash)
{
 return 1 + flash->caps->addr_width;
}
