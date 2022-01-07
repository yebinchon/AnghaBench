
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wmi_scan_event_type { ____Placeholder_wmi_scan_event_type } wmi_scan_event_type ;
typedef enum wmi_scan_completion_reason { ____Placeholder_wmi_scan_completion_reason } wmi_scan_completion_reason ;
__attribute__((used)) static const char *
ath10k_wmi_event_scan_type_str(enum wmi_scan_event_type type,
          enum wmi_scan_completion_reason reason)
{
 switch (type) {
 case 135:
  return "started";
 case 141:
  switch (reason) {
  case 132:
   return "completed";
  case 133:
   return "completed [cancelled]";
  case 129:
   return "completed [preempted]";
  case 128:
   return "completed [timedout]";
  case 131:
   return "completed [internal err]";
  case 130:
   break;
  }
  return "completed [unknown]";
 case 142:
  return "bss channel";
 case 139:
  return "foreign channel";
 case 140:
  return "dequeued";
 case 137:
  return "preempted";
 case 134:
  return "start failed";
 case 136:
  return "restarted";
 case 138:
  return "foreign channel exit";
 default:
  return "unknown";
 }
}
