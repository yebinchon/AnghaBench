
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int set_feature_list; int get_feature_list; int model; int supports_set_get_features; } ;
struct nand_chip {TYPE_1__ parameters; } ;


 unsigned int ARRAY_SIZE (char const* const*) ;
 int ONFI_FEATURE_ADDR_TIMING_MODE ;
 int bitmap_clear (int ,int ,int) ;
 int strcmp (char const* const,int ) ;

__attribute__((used)) static void macronix_nand_fix_broken_get_timings(struct nand_chip *chip)
{
 unsigned int i;
 static const char * const broken_get_timings[] = {
  "MX30LF1G18AC",
  "MX30LF1G28AC",
  "MX30LF2G18AC",
  "MX30LF2G28AC",
  "MX30LF4G18AC",
  "MX30LF4G28AC",
  "MX60LF8G18AC",
  "MX30UF1G18AC",
  "MX30UF1G16AC",
  "MX30UF2G18AC",
  "MX30UF2G16AC",
  "MX30UF4G18AC",
  "MX30UF4G16AC",
  "MX30UF4G28AC",
 };

 if (!chip->parameters.supports_set_get_features)
  return;

 for (i = 0; i < ARRAY_SIZE(broken_get_timings); i++) {
  if (!strcmp(broken_get_timings[i], chip->parameters.model))
   break;
 }

 if (i == ARRAY_SIZE(broken_get_timings))
  return;

 bitmap_clear(chip->parameters.get_feature_list,
       ONFI_FEATURE_ADDR_TIMING_MODE, 1);
 bitmap_clear(chip->parameters.set_feature_list,
       ONFI_FEATURE_ADDR_TIMING_MODE, 1);
}
