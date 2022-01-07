
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct sk_buff {scalar_t__ len; int sk; } ;
struct nfp_net_tls_offload_ctx {scalar_t__ next_seq; } ;
struct TYPE_2__ {int seq; } ;


 int TLS_OFFLOAD_CTX_DIR_TX ;
 scalar_t__ WARN_ON_ONCE (int) ;
 scalar_t__ ntohl (int ) ;
 scalar_t__ skb_transport_offset (struct sk_buff*) ;
 TYPE_1__* tcp_hdr (struct sk_buff*) ;
 scalar_t__ tcp_hdrlen (struct sk_buff*) ;
 struct nfp_net_tls_offload_ctx* tls_driver_ctx (int ,int ) ;
 int tls_is_sk_tx_device_offloaded (int ) ;

__attribute__((used)) static void nfp_net_tls_tx_undo(struct sk_buff *skb, u64 tls_handle)
{
}
