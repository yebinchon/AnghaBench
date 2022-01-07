
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv88e6xxx_chip {TYPE_1__* info; } ;
struct TYPE_2__ {unsigned int num_databases; } ;



__attribute__((used)) static inline unsigned int mv88e6xxx_num_databases(struct mv88e6xxx_chip *chip)
{
 return chip->info->num_databases;
}
