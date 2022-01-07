
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct netsec_priv {int dummy; } ;


 int NETSEC_REG_NRM_TX_PKTCNT ;
 scalar_t__ likely (int ) ;
 int netsec_write (struct netsec_priv*,int ,int ) ;

__attribute__((used)) static void netsec_xdp_ring_tx_db(struct netsec_priv *priv, u16 pkts)
{
 if (likely(pkts))
  netsec_write(priv, NETSEC_REG_NRM_TX_PKTCNT, pkts);
}
