
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ath10k_scan_state { ____Placeholder_ath10k_scan_state } ath10k_scan_state ;







__attribute__((used)) static inline const char *ath10k_scan_state_str(enum ath10k_scan_state state)
{
 switch (state) {
 case 130:
  return "idle";
 case 128:
  return "starting";
 case 129:
  return "running";
 case 131:
  return "aborting";
 }

 return "unknown";
}
