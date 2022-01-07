
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct il_priv {int dummy; } ;


 int D_RX (char*,int,int) ;
 int RX_MPDU_RES_STATUS_DEC_DONE_MSK ;
 int RX_MPDU_RES_STATUS_ICV_OK ;
 int RX_MPDU_RES_STATUS_MIC_OK ;
 int RX_MPDU_RES_STATUS_TTAK_OK ;
 int RX_RES_STATUS_BAD_ICV_MIC ;
 int RX_RES_STATUS_BAD_KEY_TTAK ;
 int RX_RES_STATUS_DECRYPT_OK ;
 int RX_RES_STATUS_NO_STATION_INFO_MISMATCH ;

 int RX_RES_STATUS_SEC_TYPE_ERR ;
 int RX_RES_STATUS_SEC_TYPE_MSK ;
 int RX_RES_STATUS_SEC_TYPE_NONE ;

 int RX_RES_STATUS_STATION_FOUND ;

__attribute__((used)) static u32
il4965_translate_rx_status(struct il_priv *il, u32 decrypt_in)
{
 u32 decrypt_out = 0;

 if ((decrypt_in & RX_RES_STATUS_STATION_FOUND) ==
     RX_RES_STATUS_STATION_FOUND)
  decrypt_out |=
      (RX_RES_STATUS_STATION_FOUND |
       RX_RES_STATUS_NO_STATION_INFO_MISMATCH);

 decrypt_out |= (decrypt_in & RX_RES_STATUS_SEC_TYPE_MSK);


 if ((decrypt_in & RX_RES_STATUS_SEC_TYPE_MSK) ==
     RX_RES_STATUS_SEC_TYPE_NONE)
  return decrypt_out;


 if ((decrypt_in & RX_RES_STATUS_SEC_TYPE_MSK) ==
     RX_RES_STATUS_SEC_TYPE_ERR)
  return decrypt_out;


 if ((decrypt_in & RX_MPDU_RES_STATUS_DEC_DONE_MSK) !=
     RX_MPDU_RES_STATUS_DEC_DONE_MSK)
  return decrypt_out;

 switch (decrypt_in & RX_RES_STATUS_SEC_TYPE_MSK) {

 case 129:

  if (!(decrypt_in & RX_MPDU_RES_STATUS_MIC_OK))

   decrypt_out |= RX_RES_STATUS_BAD_ICV_MIC;
  else
   decrypt_out |= RX_RES_STATUS_DECRYPT_OK;

  break;

 case 128:
  if (!(decrypt_in & RX_MPDU_RES_STATUS_TTAK_OK)) {

   decrypt_out |= RX_RES_STATUS_BAD_KEY_TTAK;
   break;
  }

 default:
  if (!(decrypt_in & RX_MPDU_RES_STATUS_ICV_OK))
   decrypt_out |= RX_RES_STATUS_BAD_ICV_MIC;
  else
   decrypt_out |= RX_RES_STATUS_DECRYPT_OK;
  break;
 }

 D_RX("decrypt_in:0x%x  decrypt_out = 0x%x\n", decrypt_in, decrypt_out);

 return decrypt_out;
}
