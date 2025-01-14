
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dpaa2_eth_priv {int num_fqs; int dpio_cpumask; struct dpaa2_eth_fq* fq; TYPE_2__* net_dev; } ;
struct dpaa2_eth_fq {int type; int target_cpu; int channel; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;




 int cpumask_first (int *) ;
 int cpumask_next (int,int *) ;
 int dev_err (struct device*,char*,int) ;
 int get_affine_channel (struct dpaa2_eth_priv*,int) ;
 int nr_cpu_ids ;
 int update_xps (struct dpaa2_eth_priv*) ;

__attribute__((used)) static void set_fq_affinity(struct dpaa2_eth_priv *priv)
{
 struct device *dev = priv->net_dev->dev.parent;
 struct dpaa2_eth_fq *fq;
 int rx_cpu, txc_cpu;
 int i;





 rx_cpu = txc_cpu = cpumask_first(&priv->dpio_cpumask);

 for (i = 0; i < priv->num_fqs; i++) {
  fq = &priv->fq[i];
  switch (fq->type) {
  case 129:
   fq->target_cpu = rx_cpu;
   rx_cpu = cpumask_next(rx_cpu, &priv->dpio_cpumask);
   if (rx_cpu >= nr_cpu_ids)
    rx_cpu = cpumask_first(&priv->dpio_cpumask);
   break;
  case 128:
   fq->target_cpu = txc_cpu;
   txc_cpu = cpumask_next(txc_cpu, &priv->dpio_cpumask);
   if (txc_cpu >= nr_cpu_ids)
    txc_cpu = cpumask_first(&priv->dpio_cpumask);
   break;
  default:
   dev_err(dev, "Unknown FQ type: %d\n", fq->type);
  }
  fq->channel = get_affine_channel(priv, fq->target_cpu);
 }

 update_xps(priv);
}
