
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc13xxx {int dummy; } ;


 int mc13xxx_add_subdevice_pdata (struct mc13xxx*,char const*,int *,int ) ;

__attribute__((used)) static int mc13xxx_add_subdevice(struct mc13xxx *mc13xxx, const char *format)
{
 return mc13xxx_add_subdevice_pdata(mc13xxx, format, ((void*)0), 0);
}
