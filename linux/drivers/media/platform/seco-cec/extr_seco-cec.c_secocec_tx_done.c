
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct cec_adapter {int dummy; } ;


 int CEC_TX_STATUS_ERROR ;
 int CEC_TX_STATUS_NACK ;
 int CEC_TX_STATUS_OK ;
 int SECOCEC_STATUS ;
 int SECOCEC_STATUS_MSG_SENT_MASK ;
 int SECOCEC_STATUS_TX_ERROR_MASK ;
 int SECOCEC_STATUS_TX_NACK_ERROR ;
 int cec_transmit_attempt_done (struct cec_adapter*,int ) ;
 int smb_wr16 (int ,int) ;

__attribute__((used)) static void secocec_tx_done(struct cec_adapter *adap, u16 status_val)
{
 if (status_val & SECOCEC_STATUS_TX_ERROR_MASK) {
  if (status_val & SECOCEC_STATUS_TX_NACK_ERROR)
   cec_transmit_attempt_done(adap, CEC_TX_STATUS_NACK);
  else
   cec_transmit_attempt_done(adap, CEC_TX_STATUS_ERROR);
 } else {
  cec_transmit_attempt_done(adap, CEC_TX_STATUS_OK);
 }


 status_val = SECOCEC_STATUS_TX_ERROR_MASK |
  SECOCEC_STATUS_MSG_SENT_MASK |
  SECOCEC_STATUS_TX_NACK_ERROR;
 smb_wr16(SECOCEC_STATUS, status_val);
}
