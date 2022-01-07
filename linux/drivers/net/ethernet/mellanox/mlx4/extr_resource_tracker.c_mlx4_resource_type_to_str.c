
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mlx4_resource { ____Placeholder_mlx4_resource } mlx4_resource ;
__attribute__((used)) static const char *mlx4_resource_type_to_str(enum mlx4_resource t)
{
 switch (t) {
 case 131:
  return "QP";
 case 137:
  return "CQ";
 case 130:
  return "SRQ";
 case 128:
  return "XRCD";
 case 133:
  return "MPT";
 case 132:
  return "MTT";
 case 134:
  return "MAC";
 case 129:
  return "VLAN";
 case 138:
  return "COUNTER";
 case 135:
  return "FS_RULE";
 case 136:
  return "EQ";
 default:
  return "INVALID RESOURCE";
 }
}
