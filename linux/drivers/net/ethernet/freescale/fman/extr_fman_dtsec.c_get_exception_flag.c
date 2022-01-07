
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum fman_mac_exceptions { ____Placeholder_fman_mac_exceptions } fman_mac_exceptions ;


 int DTSEC_IMASK_BREN ;
 int DTSEC_IMASK_BTEN ;
 int DTSEC_IMASK_CRLEN ;
 int DTSEC_IMASK_GRSCEN ;
 int DTSEC_IMASK_GTSCEN ;
 int DTSEC_IMASK_LCEN ;
 int DTSEC_IMASK_MAGEN ;
 int DTSEC_IMASK_MMRDEN ;
 int DTSEC_IMASK_MMWREN ;
 int DTSEC_IMASK_MSROEN ;
 int DTSEC_IMASK_RXCEN ;
 int DTSEC_IMASK_TDPEEN ;
 int DTSEC_IMASK_TXCEN ;
 int DTSEC_IMASK_TXEEN ;
 int DTSEC_IMASK_XFUNEN ;
__attribute__((used)) static int get_exception_flag(enum fman_mac_exceptions exception)
{
 u32 bit_mask;

 switch (exception) {
 case 142:
  bit_mask = DTSEC_IMASK_BREN;
  break;
 case 132:
  bit_mask = DTSEC_IMASK_RXCEN;
  break;
 case 137:
  bit_mask = DTSEC_IMASK_GTSCEN;
  break;
 case 141:
  bit_mask = DTSEC_IMASK_BTEN;
  break;
 case 130:
  bit_mask = DTSEC_IMASK_TXCEN;
  break;
 case 129:
  bit_mask = DTSEC_IMASK_TXEEN;
  break;
 case 136:
  bit_mask = DTSEC_IMASK_LCEN;
  break;
 case 140:
  bit_mask = DTSEC_IMASK_CRLEN;
  break;
 case 128:
  bit_mask = DTSEC_IMASK_XFUNEN;
  break;
 case 135:
  bit_mask = DTSEC_IMASK_MAGEN;
  break;
 case 134:
  bit_mask = DTSEC_IMASK_MMRDEN;
  break;
 case 133:
  bit_mask = DTSEC_IMASK_MMWREN;
  break;
 case 138:
  bit_mask = DTSEC_IMASK_GRSCEN;
  break;
 case 139:
  bit_mask = DTSEC_IMASK_TDPEEN;
  break;
 case 131:
  bit_mask = DTSEC_IMASK_MSROEN;
  break;
 default:
  bit_mask = 0;
  break;
 }

 return bit_mask;
}
