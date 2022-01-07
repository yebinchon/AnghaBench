
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htc_target {int * endpoint; } ;
struct htc_packet {scalar_t__ endpoint; scalar_t__ act_len; scalar_t__ buf; int status; } ;


 int ATH6KL_DBG_HTC ;
 int ECANCELED ;
 scalar_t__ ENDPOINT_0 ;
 scalar_t__ HTC_HDR_LENGTH ;
 int WARN_ON (int) ;
 int ath6kl_dbg_dump (int ,char*,char*,scalar_t__,scalar_t__) ;
 int ath6kl_err (char*,scalar_t__) ;
 int htc_reclaim_rxbuf (struct htc_target*,struct htc_packet*,int *) ;
 int reclaim_rx_ctrl_buf (struct htc_target*,struct htc_packet*) ;

__attribute__((used)) static void htc_ctrl_rx(struct htc_target *context, struct htc_packet *packets)
{
 if (packets->endpoint != ENDPOINT_0) {
  WARN_ON(1);
  return;
 }

 if (packets->status == -ECANCELED) {
  reclaim_rx_ctrl_buf(context, packets);
  return;
 }

 if (packets->act_len > 0) {
  ath6kl_err("htc_ctrl_rx, got message with len:%zu\n",
      packets->act_len + HTC_HDR_LENGTH);

  ath6kl_dbg_dump(ATH6KL_DBG_HTC,
    "htc rx unexpected endpoint 0 message", "",
    packets->buf - HTC_HDR_LENGTH,
    packets->act_len + HTC_HDR_LENGTH);
 }

 htc_reclaim_rxbuf(context, packets, &context->endpoint[0]);
}
