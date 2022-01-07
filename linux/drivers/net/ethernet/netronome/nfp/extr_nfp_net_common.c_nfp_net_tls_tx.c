
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct sk_buff {scalar_t__ len; int sk; } ;
struct nfp_net_tls_offload_ctx {scalar_t__ next_seq; int fw_handle; } ;
struct nfp_net_r_vector {int tx_sync; scalar_t__ hw_tls_tx; int tx_errors; int tls_tx_no_fallback; int tls_tx_fallback; } ;
struct nfp_net_dp {int ktls_tx; } ;
struct TYPE_4__ {scalar_t__ gso_segs; } ;
struct TYPE_3__ {int seq; } ;


 int TLS_OFFLOAD_CTX_DIR_TX ;
 int U32_MAX ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 int memcpy (int *,int ,int) ;
 int nn_dp_warn (struct nfp_net_dp*,char*) ;
 scalar_t__ ntohl (int ) ;
 int skb_is_gso (struct sk_buff*) ;
 int skb_is_nonlinear (struct sk_buff*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ skb_transport_offset (struct sk_buff*) ;
 TYPE_1__* tcp_hdr (struct sk_buff*) ;
 scalar_t__ tcp_hdrlen (struct sk_buff*) ;
 struct nfp_net_tls_offload_ctx* tls_driver_ctx (int ,int ) ;
 struct sk_buff* tls_encrypt_skb (struct sk_buff*) ;
 int tls_is_sk_tx_device_offloaded (int ) ;
 int tls_offload_tx_resync_pending (int ) ;
 int tls_offload_tx_resync_request (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *
nfp_net_tls_tx(struct nfp_net_dp *dp, struct nfp_net_r_vector *r_vec,
        struct sk_buff *skb, u64 *tls_handle, int *nr_frags)
{
 return skb;
}
