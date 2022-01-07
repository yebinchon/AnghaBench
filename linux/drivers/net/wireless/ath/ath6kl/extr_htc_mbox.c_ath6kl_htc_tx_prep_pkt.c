
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct htc_packet {int endpoint; scalar_t__ act_len; scalar_t__ buf; } ;
struct htc_frame_hdr {int* ctrl; int eid; int flags; int payld_len; } ;


 scalar_t__ HTC_HDR_LENGTH ;
 int put_unaligned (int ,int *) ;

__attribute__((used)) static void ath6kl_htc_tx_prep_pkt(struct htc_packet *packet, u8 flags,
       int ctrl0, int ctrl1)
{
 struct htc_frame_hdr *hdr;

 packet->buf -= HTC_HDR_LENGTH;
 hdr = (struct htc_frame_hdr *)packet->buf;


 put_unaligned((u16)packet->act_len, &hdr->payld_len);
 hdr->flags = flags;
 hdr->eid = packet->endpoint;
 hdr->ctrl[0] = ctrl0;
 hdr->ctrl[1] = ctrl1;
}
