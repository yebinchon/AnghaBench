
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum fman_mac_exceptions { ____Placeholder_fman_mac_exceptions } fman_mac_exceptions ;
 int TGEC_IMASK_LOC_FAULT ;
 int TGEC_IMASK_MDIO_CMD_CMPL ;
 int TGEC_IMASK_MDIO_SCAN_EVENT ;
 int TGEC_IMASK_REM_FAULT ;
 int TGEC_IMASK_RX_ALIGN_ER ;
 int TGEC_IMASK_RX_CRC_ER ;
 int TGEC_IMASK_RX_ECC_ER ;
 int TGEC_IMASK_RX_FIFO_OVFL ;
 int TGEC_IMASK_RX_FRAG_FRM ;
 int TGEC_IMASK_RX_JAB_FRM ;
 int TGEC_IMASK_RX_LEN_ER ;
 int TGEC_IMASK_RX_OVRSZ_FRM ;
 int TGEC_IMASK_RX_RUNT_FRM ;
 int TGEC_IMASK_TX_ECC_ER ;
 int TGEC_IMASK_TX_ER ;
 int TGEC_IMASK_TX_FIFO_OVFL ;
 int TGEC_IMASK_TX_FIFO_UNFL ;

__attribute__((used)) static int get_exception_flag(enum fman_mac_exceptions exception)
{
 u32 bit_mask;

 switch (exception) {
 case 142:
  bit_mask = TGEC_IMASK_MDIO_SCAN_EVENT;
  break;
 case 143:
  bit_mask = TGEC_IMASK_MDIO_CMD_CMPL;
  break;
 case 141:
  bit_mask = TGEC_IMASK_REM_FAULT;
  break;
 case 144:
  bit_mask = TGEC_IMASK_LOC_FAULT;
  break;
 case 131:
  bit_mask = TGEC_IMASK_TX_ECC_ER;
  break;
 case 128:
  bit_mask = TGEC_IMASK_TX_FIFO_UNFL;
  break;
 case 129:
  bit_mask = TGEC_IMASK_TX_FIFO_OVFL;
  break;
 case 130:
  bit_mask = TGEC_IMASK_TX_ER;
  break;
 case 137:
  bit_mask = TGEC_IMASK_RX_FIFO_OVFL;
  break;
 case 138:
  bit_mask = TGEC_IMASK_RX_ECC_ER;
  break;
 case 135:
  bit_mask = TGEC_IMASK_RX_JAB_FRM;
  break;
 case 133:
  bit_mask = TGEC_IMASK_RX_OVRSZ_FRM;
  break;
 case 132:
  bit_mask = TGEC_IMASK_RX_RUNT_FRM;
  break;
 case 136:
  bit_mask = TGEC_IMASK_RX_FRAG_FRM;
  break;
 case 134:
  bit_mask = TGEC_IMASK_RX_LEN_ER;
  break;
 case 139:
  bit_mask = TGEC_IMASK_RX_CRC_ER;
  break;
 case 140:
  bit_mask = TGEC_IMASK_RX_ALIGN_ER;
  break;
 default:
  bit_mask = 0;
  break;
 }

 return bit_mask;
}
