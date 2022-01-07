
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum place_holder_in_cap_bitmap { ____Placeholder_place_holder_in_cap_bitmap } place_holder_in_cap_bitmap ;


 int ARRAY_SIZE (char const**) ;
 char const** wcn36xx_caps_names ;

__attribute__((used)) static const char *wcn36xx_get_cap_name(enum place_holder_in_cap_bitmap x)
{
 if (x >= ARRAY_SIZE(wcn36xx_caps_names))
  return "UNKNOWN";
 return wcn36xx_caps_names[x];
}
