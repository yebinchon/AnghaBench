
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
typedef int u16 ;
struct TYPE_2__ {int mpdu_header_off; int bd_ssn; int tid; void* mpdu_len; void* mpdu_header_len; void* mpdu_data_off; } ;
struct wcn36xx_tx_bd {TYPE_1__ pdu; } ;


 int WCN36XX_TXBD_SSN_FILL_DPU_QOS ;

__attribute__((used)) static void wcn36xx_set_tx_pdu(struct wcn36xx_tx_bd *bd,
          u32 mpdu_header_len,
          u32 len,
          u16 tid)
{
 bd->pdu.mpdu_header_len = mpdu_header_len;
 bd->pdu.mpdu_header_off = sizeof(*bd);
 bd->pdu.mpdu_data_off = bd->pdu.mpdu_header_len +
  bd->pdu.mpdu_header_off;
 bd->pdu.mpdu_len = len;
 bd->pdu.tid = tid;
 bd->pdu.bd_ssn = WCN36XX_TXBD_SSN_FILL_DPU_QOS;
}
