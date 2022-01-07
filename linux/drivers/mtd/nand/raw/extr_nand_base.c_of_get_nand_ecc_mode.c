
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int ARRAY_SIZE (char**) ;
 int ENODEV ;
 int NAND_ECC_SOFT ;
 char** nand_ecc_modes ;
 int of_property_read_string (struct device_node*,char*,char const**) ;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static int of_get_nand_ecc_mode(struct device_node *np)
{
 const char *pm;
 int err, i;

 err = of_property_read_string(np, "nand-ecc-mode", &pm);
 if (err < 0)
  return err;

 for (i = 0; i < ARRAY_SIZE(nand_ecc_modes); i++)
  if (!strcasecmp(pm, nand_ecc_modes[i]))
   return i;






 if (!strcasecmp(pm, "soft_bch"))
  return NAND_ECC_SOFT;

 return -ENODEV;
}
