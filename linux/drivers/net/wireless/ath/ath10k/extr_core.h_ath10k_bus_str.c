
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ath10k_bus { ____Placeholder_ath10k_bus } ath10k_bus ;
__attribute__((used)) static inline const char *ath10k_bus_str(enum ath10k_bus bus)
{
 switch (bus) {
 case 131:
  return "pci";
 case 132:
  return "ahb";
 case 130:
  return "sdio";
 case 128:
  return "usb";
 case 129:
  return "snoc";
 }

 return "unknown";
}
