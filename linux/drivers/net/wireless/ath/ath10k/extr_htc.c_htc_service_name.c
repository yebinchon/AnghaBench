
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ath10k_htc_svc_id { ____Placeholder_ath10k_htc_svc_id } ath10k_htc_svc_id ;
__attribute__((used)) static const char *htc_service_name(enum ath10k_htc_svc_id id)
{
 switch (id) {
 case 135:
  return "Reserved";
 case 134:
  return "Control";
 case 132:
  return "WMI";
 case 131:
  return "DATA BE";
 case 130:
  return "DATA BK";
 case 129:
  return "DATA VI";
 case 128:
  return "DATA VO";
 case 137:
  return "NMI Control";
 case 136:
  return "NMI Data";
 case 139:
  return "HTT Data";
 case 141:
  return "HTT Data";
 case 140:
  return "HTT Data";
 case 133:
  return "RAW";
 case 138:
  return "PKTLOG";
 }

 return "Unknown";
}
