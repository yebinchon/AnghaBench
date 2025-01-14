
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct resource {scalar_t__ start; } ;


 int acpi_check_region (scalar_t__,int,char*) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int lpc_ich_check_conflict_gpio(struct resource *res)
{
 int ret;
 u8 use_gpio = 0;

 if (resource_size(res) >= 0x50 &&
     !acpi_check_region(res->start + 0x40, 0x10, "LPC ICH GPIO3"))
  use_gpio |= 1 << 2;

 if (!acpi_check_region(res->start + 0x30, 0x10, "LPC ICH GPIO2"))
  use_gpio |= 1 << 1;

 ret = acpi_check_region(res->start + 0x00, 0x30, "LPC ICH GPIO1");
 if (!ret)
  use_gpio |= 1 << 0;

 return use_gpio ? use_gpio : ret;
}
