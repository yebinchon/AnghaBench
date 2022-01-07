
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bgx {int dummy; } ;


 int acpi_disabled ;
 int bgx_init_acpi_phy (struct bgx*) ;
 int bgx_init_of_phy (struct bgx*) ;

__attribute__((used)) static int bgx_init_phy(struct bgx *bgx)
{
 if (!acpi_disabled)
  return bgx_init_acpi_phy(bgx);

 return bgx_init_of_phy(bgx);
}
