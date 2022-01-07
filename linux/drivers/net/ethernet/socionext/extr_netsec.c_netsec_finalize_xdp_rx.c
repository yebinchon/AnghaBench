
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct netsec_priv {int dummy; } ;


 int NETSEC_XDP_REDIR ;
 int NETSEC_XDP_TX ;
 int netsec_xdp_ring_tx_db (struct netsec_priv*,int ) ;
 int xdp_do_flush_map () ;

__attribute__((used)) static void netsec_finalize_xdp_rx(struct netsec_priv *priv, u32 xdp_res,
       u16 pkts)
{
 if (xdp_res & NETSEC_XDP_REDIR)
  xdp_do_flush_map();

 if (xdp_res & NETSEC_XDP_TX)
  netsec_xdp_ring_tx_db(priv, pkts);
}
