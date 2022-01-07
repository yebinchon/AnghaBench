
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fwnode_bus_conv {int mbus_type; } ;
typedef enum v4l2_mbus_type { ____Placeholder_v4l2_mbus_type } v4l2_mbus_type ;


 unsigned int ARRAY_SIZE (struct v4l2_fwnode_bus_conv const*) ;
 struct v4l2_fwnode_bus_conv const* buses ;

__attribute__((used)) static const struct v4l2_fwnode_bus_conv *
get_v4l2_fwnode_bus_conv_by_mbus(enum v4l2_mbus_type type)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(buses); i++)
  if (buses[i].mbus_type == type)
   return &buses[i];

 return ((void*)0);
}
