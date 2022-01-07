
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
__attribute__((used)) static const char *ibmvnic_fw_err_cause(u16 cause)
{
 switch (cause) {
 case 134:
  return "adapter problem";
 case 133:
  return "bus problem";
 case 130:
  return "firmware problem";
 case 132:
  return "device driver problem";
 case 131:
  return "EEH recovery";
 case 129:
  return "firmware updated";
 case 128:
  return "low Memory";
 default:
  return "unknown";
 }
}
