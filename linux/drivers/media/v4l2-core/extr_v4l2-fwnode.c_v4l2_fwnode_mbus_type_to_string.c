
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fwnode_bus_conv {char const* name; } ;
typedef enum v4l2_mbus_type { ____Placeholder_v4l2_mbus_type } v4l2_mbus_type ;


 struct v4l2_fwnode_bus_conv* get_v4l2_fwnode_bus_conv_by_mbus (int) ;

__attribute__((used)) static const char *
v4l2_fwnode_mbus_type_to_string(enum v4l2_mbus_type type)
{
 const struct v4l2_fwnode_bus_conv *conv =
  get_v4l2_fwnode_bus_conv_by_mbus(type);

 return conv ? conv->name : "not found";
}
