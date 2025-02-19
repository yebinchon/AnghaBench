
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int tcp_payload_len; } ;
struct TYPE_6__ {int buf1_size; int tcp_hdr_len; TYPE_1__ tx_pkt_len; int tse_bit; } ;
struct TYPE_5__ {TYPE_3__ tx_rd_des23; } ;
struct sxgbe_tx_norm_desc {TYPE_2__ tdes23; } ;



__attribute__((used)) static void sxgbe_tx_desc_enable_tse(struct sxgbe_tx_norm_desc *p, u8 is_tse,
         u32 total_hdr_len, u32 tcp_hdr_len,
         u32 tcp_payload_len)
{
 p->tdes23.tx_rd_des23.tse_bit = is_tse;
 p->tdes23.tx_rd_des23.buf1_size = total_hdr_len;
 p->tdes23.tx_rd_des23.tcp_hdr_len = tcp_hdr_len / 4;
 p->tdes23.tx_rd_des23.tx_pkt_len.tcp_payload_len = tcp_payload_len;
}
