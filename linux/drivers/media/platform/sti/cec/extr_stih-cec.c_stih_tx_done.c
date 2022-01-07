
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stih_cec {int adap; } ;


 int CEC_TX_ACK_GET_STS ;
 int CEC_TX_ARB_ERROR ;
 int CEC_TX_ERROR ;
 int CEC_TX_STATUS_ARB_LOST ;
 int CEC_TX_STATUS_ERROR ;
 int CEC_TX_STATUS_NACK ;
 int CEC_TX_STATUS_OK ;
 int cec_transmit_attempt_done (int ,int ) ;

__attribute__((used)) static void stih_tx_done(struct stih_cec *cec, u32 status)
{
 if (status & CEC_TX_ERROR) {
  cec_transmit_attempt_done(cec->adap, CEC_TX_STATUS_ERROR);
  return;
 }

 if (status & CEC_TX_ARB_ERROR) {
  cec_transmit_attempt_done(cec->adap, CEC_TX_STATUS_ARB_LOST);
  return;
 }

 if (!(status & CEC_TX_ACK_GET_STS)) {
  cec_transmit_attempt_done(cec->adap, CEC_TX_STATUS_NACK);
  return;
 }

 cec_transmit_attempt_done(cec->adap, CEC_TX_STATUS_OK);
}
