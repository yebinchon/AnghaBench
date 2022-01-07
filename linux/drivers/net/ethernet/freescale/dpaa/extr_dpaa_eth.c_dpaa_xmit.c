
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_stats64 {int tx_bytes; int tx_packets; int tx_fifo_errors; } ;
struct qman_fq {int dummy; } ;
struct qm_fd {scalar_t__ bpid; int cmd; } ;
struct dpaa_priv {int net_dev; int * conf_fqs; struct qman_fq** egress_fqs; } ;


 int DPAA_ENQUEUE_RETRIES ;
 int EBUSY ;
 scalar_t__ FSL_DPAA_BPID_INV ;
 int cpu_to_be32 (int ) ;
 scalar_t__ qm_fd_get_length (struct qm_fd*) ;
 int qman_enqueue (struct qman_fq*,struct qm_fd*) ;
 int qman_fq_fqid (int ) ;
 int trace_dpaa_tx_fd (int ,struct qman_fq*,struct qm_fd*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int dpaa_xmit(struct dpaa_priv *priv,
       struct rtnl_link_stats64 *percpu_stats,
       int queue,
       struct qm_fd *fd)
{
 struct qman_fq *egress_fq;
 int err, i;

 egress_fq = priv->egress_fqs[queue];
 if (fd->bpid == FSL_DPAA_BPID_INV)
  fd->cmd |= cpu_to_be32(qman_fq_fqid(priv->conf_fqs[queue]));


 trace_dpaa_tx_fd(priv->net_dev, egress_fq, fd);

 for (i = 0; i < DPAA_ENQUEUE_RETRIES; i++) {
  err = qman_enqueue(egress_fq, fd);
  if (err != -EBUSY)
   break;
 }

 if (unlikely(err < 0)) {
  percpu_stats->tx_fifo_errors++;
  return err;
 }

 percpu_stats->tx_packets++;
 percpu_stats->tx_bytes += qm_fd_get_length(fd);

 return 0;
}
