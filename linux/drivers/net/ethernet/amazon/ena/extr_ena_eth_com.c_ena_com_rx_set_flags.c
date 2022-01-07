
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_eth_io_rx_cdesc_base {int status; int hash; } ;
struct ena_com_rx_ctx {int l3_proto; int l4_proto; int l3_csum_err; int l4_csum_err; int l4_csum_checked; int frag; int hash; } ;


 int ENA_ETH_IO_RX_CDESC_BASE_IPV4_FRAG_MASK ;
 int ENA_ETH_IO_RX_CDESC_BASE_IPV4_FRAG_SHIFT ;
 int ENA_ETH_IO_RX_CDESC_BASE_L3_CSUM_ERR_MASK ;
 int ENA_ETH_IO_RX_CDESC_BASE_L3_CSUM_ERR_SHIFT ;
 int ENA_ETH_IO_RX_CDESC_BASE_L3_PROTO_IDX_MASK ;
 int ENA_ETH_IO_RX_CDESC_BASE_L4_CSUM_CHECKED_MASK ;
 int ENA_ETH_IO_RX_CDESC_BASE_L4_CSUM_CHECKED_SHIFT ;
 int ENA_ETH_IO_RX_CDESC_BASE_L4_CSUM_ERR_MASK ;
 int ENA_ETH_IO_RX_CDESC_BASE_L4_CSUM_ERR_SHIFT ;
 int ENA_ETH_IO_RX_CDESC_BASE_L4_PROTO_IDX_MASK ;
 int ENA_ETH_IO_RX_CDESC_BASE_L4_PROTO_IDX_SHIFT ;
 int pr_debug (char*,int,int,int,int,int ,int,int) ;

__attribute__((used)) static void ena_com_rx_set_flags(struct ena_com_rx_ctx *ena_rx_ctx,
     struct ena_eth_io_rx_cdesc_base *cdesc)
{
 ena_rx_ctx->l3_proto = cdesc->status &
  ENA_ETH_IO_RX_CDESC_BASE_L3_PROTO_IDX_MASK;
 ena_rx_ctx->l4_proto =
  (cdesc->status & ENA_ETH_IO_RX_CDESC_BASE_L4_PROTO_IDX_MASK) >>
  ENA_ETH_IO_RX_CDESC_BASE_L4_PROTO_IDX_SHIFT;
 ena_rx_ctx->l3_csum_err =
  !!((cdesc->status & ENA_ETH_IO_RX_CDESC_BASE_L3_CSUM_ERR_MASK) >>
  ENA_ETH_IO_RX_CDESC_BASE_L3_CSUM_ERR_SHIFT);
 ena_rx_ctx->l4_csum_err =
  !!((cdesc->status & ENA_ETH_IO_RX_CDESC_BASE_L4_CSUM_ERR_MASK) >>
  ENA_ETH_IO_RX_CDESC_BASE_L4_CSUM_ERR_SHIFT);
 ena_rx_ctx->l4_csum_checked =
  !!((cdesc->status & ENA_ETH_IO_RX_CDESC_BASE_L4_CSUM_CHECKED_MASK) >>
  ENA_ETH_IO_RX_CDESC_BASE_L4_CSUM_CHECKED_SHIFT);
 ena_rx_ctx->hash = cdesc->hash;
 ena_rx_ctx->frag =
  (cdesc->status & ENA_ETH_IO_RX_CDESC_BASE_IPV4_FRAG_MASK) >>
  ENA_ETH_IO_RX_CDESC_BASE_IPV4_FRAG_SHIFT;

 pr_debug("ena_rx_ctx->l3_proto %d ena_rx_ctx->l4_proto %d\nena_rx_ctx->l3_csum_err %d ena_rx_ctx->l4_csum_err %d\nhash frag %d frag: %d cdesc_status: %x\n",
   ena_rx_ctx->l3_proto, ena_rx_ctx->l4_proto,
   ena_rx_ctx->l3_csum_err, ena_rx_ctx->l4_csum_err,
   ena_rx_ctx->hash, ena_rx_ctx->frag, cdesc->status);
}
