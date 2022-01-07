
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct qman_fq {int dummy; } ;
struct fman_port {int dummy; } ;
struct dpaa_priv {int net_dev; } ;
struct dpaa_fq {int flags; scalar_t__ channel; int net_dev; struct qman_fq fq_base; } ;


 int QMAN_FQ_FLAG_NO_MODIFY ;
 int QMAN_FQ_FLAG_TO_DCPORTAL ;
 scalar_t__ fman_port_get_qman_channel_id (struct fman_port*) ;

__attribute__((used)) static inline void dpaa_setup_egress(const struct dpaa_priv *priv,
         struct dpaa_fq *fq,
         struct fman_port *port,
         const struct qman_fq *template)
{
 fq->fq_base = *template;
 fq->net_dev = priv->net_dev;

 if (port) {
  fq->flags = QMAN_FQ_FLAG_TO_DCPORTAL;
  fq->channel = (u16)fman_port_get_qman_channel_id(port);
 } else {
  fq->flags = QMAN_FQ_FLAG_NO_MODIFY;
 }
}
