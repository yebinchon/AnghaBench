
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv88e6xxx_chip {TYPE_1__* info; } ;
struct TYPE_2__ {int pvt; } ;



__attribute__((used)) static inline bool mv88e6xxx_has_pvt(struct mv88e6xxx_chip *chip)
{
 return chip->info->pvt;
}
