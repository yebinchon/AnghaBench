
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qman_portal {int dummy; } ;
struct qman_fq {int fqid; } ;
struct qm_dqrr_entry {int fd; } ;
struct net_device {int dummy; } ;
struct dpaa_priv {int percpu_priv; } ;
struct dpaa_percpu_priv {int dummy; } ;
struct dpaa_fq {struct net_device* net_dev; } ;
typedef enum qman_cb_dqrr_result { ____Placeholder_qman_cb_dqrr_result } qman_cb_dqrr_result ;


 scalar_t__ dpaa_eth_napi_schedule (struct dpaa_percpu_priv*,struct qman_portal*) ;
 int dpaa_tx_conf (struct net_device*,struct dpaa_priv*,struct dpaa_percpu_priv*,int *,int ) ;
 struct dpaa_priv* netdev_priv (struct net_device*) ;
 int qman_cb_dqrr_consume ;
 int qman_cb_dqrr_stop ;
 struct dpaa_percpu_priv* this_cpu_ptr (int ) ;
 int trace_dpaa_tx_conf_fd (struct net_device*,struct qman_fq*,int *) ;

__attribute__((used)) static enum qman_cb_dqrr_result conf_dflt_dqrr(struct qman_portal *portal,
            struct qman_fq *fq,
            const struct qm_dqrr_entry *dq)
{
 struct dpaa_percpu_priv *percpu_priv;
 struct net_device *net_dev;
 struct dpaa_priv *priv;

 net_dev = ((struct dpaa_fq *)fq)->net_dev;
 priv = netdev_priv(net_dev);


 trace_dpaa_tx_conf_fd(net_dev, fq, &dq->fd);

 percpu_priv = this_cpu_ptr(priv->percpu_priv);

 if (dpaa_eth_napi_schedule(percpu_priv, portal))
  return qman_cb_dqrr_stop;

 dpaa_tx_conf(net_dev, priv, percpu_priv, &dq->fd, fq->fqid);

 return qman_cb_dqrr_consume;
}
