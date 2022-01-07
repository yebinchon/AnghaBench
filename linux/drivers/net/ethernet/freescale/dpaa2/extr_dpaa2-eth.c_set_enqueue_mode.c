
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpaa2_eth_priv {int enqueue; } ;


 int DPNI_ENQUEUE_FQID_VER_MAJOR ;
 int DPNI_ENQUEUE_FQID_VER_MINOR ;
 scalar_t__ dpaa2_eth_cmp_dpni_ver (struct dpaa2_eth_priv*,int ,int ) ;
 int dpaa2_eth_enqueue_fq ;
 int dpaa2_eth_enqueue_qd ;

__attribute__((used)) static void set_enqueue_mode(struct dpaa2_eth_priv *priv)
{
 if (dpaa2_eth_cmp_dpni_ver(priv, DPNI_ENQUEUE_FQID_VER_MAJOR,
       DPNI_ENQUEUE_FQID_VER_MINOR) < 0)
  priv->enqueue = dpaa2_eth_enqueue_qd;
 else
  priv->enqueue = dpaa2_eth_enqueue_fq;
}
