
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mc13xxx {TYPE_1__* variant; } ;
struct TYPE_2__ {char const* name; } ;



__attribute__((used)) static const char *mc13xxx_get_chipname(struct mc13xxx *mc13xxx)
{
 return mc13xxx->variant->name;
}
