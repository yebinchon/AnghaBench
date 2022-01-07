
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct mv88e6xxx_chip {TYPE_3__* info; } ;
struct cyclecounter {int dummy; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {TYPE_1__* ptp_ops; } ;
struct TYPE_4__ {int (* clock_read ) (struct cyclecounter const*) ;} ;


 struct mv88e6xxx_chip* cc_to_chip (struct cyclecounter const*) ;
 int stub1 (struct cyclecounter const*) ;

__attribute__((used)) static u64 mv88e6xxx_ptp_clock_read(const struct cyclecounter *cc)
{
 struct mv88e6xxx_chip *chip = cc_to_chip(cc);

 if (chip->info->ops->ptp_ops->clock_read)
  return chip->info->ops->ptp_ops->clock_read(cc);

 return 0;
}
