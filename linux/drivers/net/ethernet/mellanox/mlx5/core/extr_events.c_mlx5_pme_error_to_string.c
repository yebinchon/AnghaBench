
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum port_module_event_error_type { ____Placeholder_port_module_event_error_type } port_module_event_error_type ;
__attribute__((used)) static const char *mlx5_pme_error_to_string(enum port_module_event_error_type error)
{
 switch (error) {
 case 129:
  return "Power budget exceeded";
 case 132:
  return "Long Range for non MLNX cable";
 case 135:
  return "Bus stuck (I2C or data shorted)";
 case 131:
  return "No EEPROM/retry timeout";
 case 134:
  return "Enforce part number list";
 case 128:
  return "Unknown identifier";
 case 133:
  return "High Temperature";
 case 136:
  return "Bad or shorted cable/module";
 case 130:
  return "One or more network ports have been powered down due to insufficient/unadvertised power on the PCIe slot";
 default:
  return "Unknown error";
 }
}
