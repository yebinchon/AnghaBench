
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct aspeed_smc_chip {scalar_t__ cs; TYPE_2__* controller; } ;
struct TYPE_4__ {TYPE_1__* info; } ;
struct TYPE_3__ {scalar_t__ we0; } ;


 int BIT (scalar_t__) ;

__attribute__((used)) static inline u32 aspeed_smc_chip_write_bit(struct aspeed_smc_chip *chip)
{
 return BIT(chip->controller->info->we0 + chip->cs);
}
