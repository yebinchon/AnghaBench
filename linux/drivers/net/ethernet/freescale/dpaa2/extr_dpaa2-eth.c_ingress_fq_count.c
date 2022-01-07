
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dpaa2_eth_priv {int num_fqs; int net_dev; struct dpaa2_eth_fq* fq; } ;
struct dpaa2_eth_fq {int fqid; } ;


 int dpaa2_io_query_fq_count (int *,int ,scalar_t__*,scalar_t__*) ;
 int netdev_warn (int ,char*) ;

__attribute__((used)) static u32 ingress_fq_count(struct dpaa2_eth_priv *priv)
{
 struct dpaa2_eth_fq *fq;
 u32 fcnt = 0, bcnt = 0, total = 0;
 int i, err;

 for (i = 0; i < priv->num_fqs; i++) {
  fq = &priv->fq[i];
  err = dpaa2_io_query_fq_count(((void*)0), fq->fqid, &fcnt, &bcnt);
  if (err) {
   netdev_warn(priv->net_dev, "query_fq_count failed");
   break;
  }
  total += fcnt;
 }

 return total;
}
