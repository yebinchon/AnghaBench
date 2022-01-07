
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfd_cell {void* platform_data; size_t pdata_size; int name; } ;
struct mc13xxx {int irq_data; int dev; } ;
typedef int buf ;


 int E2BIG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kmemdup (char*,scalar_t__,int ) ;
 char* mc13xxx_get_chipname (struct mc13xxx*) ;
 int mfd_add_devices (int ,int,struct mfd_cell*,int,int *,int ,int ) ;
 int regmap_irq_get_domain (int ) ;
 int snprintf (char*,int,char const*,char const*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int mc13xxx_add_subdevice_pdata(struct mc13xxx *mc13xxx,
  const char *format, void *pdata, size_t pdata_size)
{
 char buf[30];
 const char *name = mc13xxx_get_chipname(mc13xxx);

 struct mfd_cell cell = {
  .platform_data = pdata,
  .pdata_size = pdata_size,
 };


 if (snprintf(buf, sizeof(buf), format, name) > sizeof(buf))
  return -E2BIG;

 cell.name = kmemdup(buf, strlen(buf) + 1, GFP_KERNEL);
 if (!cell.name)
  return -ENOMEM;

 return mfd_add_devices(mc13xxx->dev, -1, &cell, 1, ((void*)0), 0,
          regmap_irq_get_domain(mc13xxx->irq_data));
}
