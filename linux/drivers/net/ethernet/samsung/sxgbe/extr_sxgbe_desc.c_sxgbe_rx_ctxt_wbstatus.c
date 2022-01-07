
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sxgbe_rx_ctxt_desc {scalar_t__ ptp_msgtype; scalar_t__ tstamp_dropped; } ;
struct sxgbe_extra_stats {int rx_ptp_resv_msg_type; int rx_ptp_signal; int rx_ptp_mgmt; int rx_ptp_announce; int rx_ptp_type_pdelay_follow_up; int rx_ptp_type_pdelay_resp; int rx_ptp_type_pdelay_req; int rx_ptp_type_delay_resp; int rx_ptp_type_delay_req; int rx_ptp_type_follow_up; int rx_ptp_type_sync; int rx_msg_type_no_ptp; int timestamp_dropped; } ;


 scalar_t__ RX_NO_PTP ;
 scalar_t__ RX_PTP_ANNOUNCE ;
 scalar_t__ RX_PTP_DELAY_REQ ;
 scalar_t__ RX_PTP_DELAY_RESP ;
 scalar_t__ RX_PTP_FOLLOW_UP ;
 scalar_t__ RX_PTP_MGMT ;
 scalar_t__ RX_PTP_PDELAY_FOLLOW_UP ;
 scalar_t__ RX_PTP_PDELAY_REQ ;
 scalar_t__ RX_PTP_PDELAY_RESP ;
 scalar_t__ RX_PTP_RESV_MSG ;
 scalar_t__ RX_PTP_SIGNAL ;
 scalar_t__ RX_PTP_SYNC ;

__attribute__((used)) static void sxgbe_rx_ctxt_wbstatus(struct sxgbe_rx_ctxt_desc *p,
       struct sxgbe_extra_stats *x)
{
 if (p->tstamp_dropped)
  x->timestamp_dropped++;


 if (p->ptp_msgtype == RX_NO_PTP)
  x->rx_msg_type_no_ptp++;
 else if (p->ptp_msgtype == RX_PTP_SYNC)
  x->rx_ptp_type_sync++;
 else if (p->ptp_msgtype == RX_PTP_FOLLOW_UP)
  x->rx_ptp_type_follow_up++;
 else if (p->ptp_msgtype == RX_PTP_DELAY_REQ)
  x->rx_ptp_type_delay_req++;
 else if (p->ptp_msgtype == RX_PTP_DELAY_RESP)
  x->rx_ptp_type_delay_resp++;
 else if (p->ptp_msgtype == RX_PTP_PDELAY_REQ)
  x->rx_ptp_type_pdelay_req++;
 else if (p->ptp_msgtype == RX_PTP_PDELAY_RESP)
  x->rx_ptp_type_pdelay_resp++;
 else if (p->ptp_msgtype == RX_PTP_PDELAY_FOLLOW_UP)
  x->rx_ptp_type_pdelay_follow_up++;
 else if (p->ptp_msgtype == RX_PTP_ANNOUNCE)
  x->rx_ptp_announce++;
 else if (p->ptp_msgtype == RX_PTP_MGMT)
  x->rx_ptp_mgmt++;
 else if (p->ptp_msgtype == RX_PTP_SIGNAL)
  x->rx_ptp_signal++;
 else if (p->ptp_msgtype == RX_PTP_RESV_MSG)
  x->rx_ptp_resv_msg_type++;
}
