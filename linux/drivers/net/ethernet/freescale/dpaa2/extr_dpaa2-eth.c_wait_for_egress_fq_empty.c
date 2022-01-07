
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tx_pending_frames; } ;
union dpni_statistics {TYPE_1__ page_6; } ;
struct dpaa2_eth_priv {int mc_token; int mc_io; } ;


 int DPNI_TX_PENDING_VER_MAJOR ;
 int DPNI_TX_PENDING_VER_MINOR ;
 scalar_t__ dpaa2_eth_cmp_dpni_ver (struct dpaa2_eth_priv*,int ,int ) ;
 int dpni_get_statistics (int ,int ,int ,int,union dpni_statistics*) ;
 int msleep (int) ;

__attribute__((used)) static void wait_for_egress_fq_empty(struct dpaa2_eth_priv *priv)
{
 union dpni_statistics stats;
 int retries = 10;
 int err;

 if (dpaa2_eth_cmp_dpni_ver(priv, DPNI_TX_PENDING_VER_MAJOR,
       DPNI_TX_PENDING_VER_MINOR) < 0)
  goto out;

 do {
  err = dpni_get_statistics(priv->mc_io, 0, priv->mc_token, 6,
       &stats);
  if (err)
   goto out;
  if (stats.page_6.tx_pending_frames == 0)
   return;
 } while (--retries);

out:
 msleep(500);
}
