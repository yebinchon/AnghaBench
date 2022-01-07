
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int n_per_out; scalar_t__ max_adj; } ;
struct TYPE_8__ {int pps_out_num; } ;
struct stmmac_priv {int dev; int * ptp_clock; int device; TYPE_4__ ptp_clock_ops; int ptp_lock; TYPE_3__ dma_cap; TYPE_2__* plat; TYPE_1__* pps; } ;
struct TYPE_7__ {scalar_t__ ptp_max_adj; } ;
struct TYPE_6__ {int available; } ;


 scalar_t__ IS_ERR (int *) ;
 int STMMAC_PPS_MAX ;
 int netdev_err (int ,char*) ;
 int netdev_info (int ,char*) ;
 int * ptp_clock_register (TYPE_4__*,int ) ;
 int spin_lock_init (int *) ;
 TYPE_4__ stmmac_ptp_clock_ops ;

void stmmac_ptp_register(struct stmmac_priv *priv)
{
 int i;

 for (i = 0; i < priv->dma_cap.pps_out_num; i++) {
  if (i >= STMMAC_PPS_MAX)
   break;
  priv->pps[i].available = 1;
 }

 if (priv->plat->ptp_max_adj)
  stmmac_ptp_clock_ops.max_adj = priv->plat->ptp_max_adj;

 stmmac_ptp_clock_ops.n_per_out = priv->dma_cap.pps_out_num;

 spin_lock_init(&priv->ptp_lock);
 priv->ptp_clock_ops = stmmac_ptp_clock_ops;

 priv->ptp_clock = ptp_clock_register(&priv->ptp_clock_ops,
          priv->device);
 if (IS_ERR(priv->ptp_clock)) {
  netdev_err(priv->dev, "ptp_clock_register failed\n");
  priv->ptp_clock = ((void*)0);
 } else if (priv->ptp_clock)
  netdev_info(priv->dev, "registered PTP clock\n");
}
