
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum fman_mac_exceptions { ____Placeholder_fman_mac_exceptions } fman_mac_exceptions ;






 int MEMAC_IMASK_MGI ;
 int MEMAC_IMASK_RECC_ER ;
 int MEMAC_IMASK_TECC_ER ;
 int MEMAC_IMASK_TSECC_ER ;

__attribute__((used)) static int get_exception_flag(enum fman_mac_exceptions exception)
{
 u32 bit_mask;

 switch (exception) {
 case 130:
  bit_mask = MEMAC_IMASK_TECC_ER;
  break;
 case 131:
  bit_mask = MEMAC_IMASK_RECC_ER;
  break;
 case 128:
  bit_mask = MEMAC_IMASK_TSECC_ER;
  break;
 case 129:
  bit_mask = MEMAC_IMASK_MGI;
  break;
 default:
  bit_mask = 0;
  break;
 }

 return bit_mask;
}
