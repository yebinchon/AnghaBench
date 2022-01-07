
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cxl_attrs { ____Placeholder_cxl_attrs } cxl_attrs ;





 int strcmp (char const*,char*) ;

__attribute__((used)) static bool guest_support_attributes(const char *attr_name,
         enum cxl_attrs type)
{
 switch (type) {
 case 130:
  if ((strcmp(attr_name, "base_image") == 0) ||
   (strcmp(attr_name, "load_image_on_perst") == 0) ||
   (strcmp(attr_name, "perst_reloads_same_image") == 0) ||
   (strcmp(attr_name, "image_loaded") == 0))
   return 0;
  break;
 case 128:
  if ((strcmp(attr_name, "pp_mmio_off") == 0))
   return 0;
  break;
 case 129:
  break;
 default:
  break;
 }

 return 1;
}
