
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qman_fq {int dummy; } ;
struct dpaa_priv {int channel; int net_dev; } ;
struct dpaa_fq {int channel; int flags; int net_dev; struct qman_fq fq_base; } ;


 int QMAN_FQ_FLAG_NO_ENQUEUE ;

__attribute__((used)) static inline void dpaa_setup_ingress(const struct dpaa_priv *priv,
          struct dpaa_fq *fq,
          const struct qman_fq *template)
{
 fq->fq_base = *template;
 fq->net_dev = priv->net_dev;

 fq->flags = QMAN_FQ_FLAG_NO_ENQUEUE;
 fq->channel = priv->channel;
}
