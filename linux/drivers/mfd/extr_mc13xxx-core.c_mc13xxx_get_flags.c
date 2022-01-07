
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc13xxx {int flags; } ;



int mc13xxx_get_flags(struct mc13xxx *mc13xxx)
{
 return mc13xxx->flags;
}
