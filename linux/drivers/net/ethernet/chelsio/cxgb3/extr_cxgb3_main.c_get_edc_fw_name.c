
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* AEL2005_OPT_EDC_NAME ;
 char* AEL2005_TWX_EDC_NAME ;
 char* AEL2020_TWX_EDC_NAME ;




__attribute__((used)) static inline const char *get_edc_fw_name(int edc_idx)
{
 const char *fw_name = ((void*)0);

 switch (edc_idx) {
 case 130:
  fw_name = AEL2005_OPT_EDC_NAME;
  break;
 case 129:
  fw_name = AEL2005_TWX_EDC_NAME;
  break;
 case 128:
  fw_name = AEL2020_TWX_EDC_NAME;
  break;
 }
 return fw_name;
}
