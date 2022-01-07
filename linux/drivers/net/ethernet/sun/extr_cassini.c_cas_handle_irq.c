
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct cas {int * stat_lock; TYPE_1__* net_stats; } ;
struct TYPE_2__ {int rx_dropped; } ;


 int const INTR_ERROR_MASK ;
 int const INTR_RX_BUF_AE ;
 int const INTR_RX_BUF_UNAVAIL ;
 int const INTR_RX_COMP_AF ;
 int const INTR_RX_COMP_FULL ;
 scalar_t__ RX_AE_FREEN_VAL (int ) ;
 scalar_t__ RX_DESC_RINGN_SIZE (int ) ;
 int cas_abnormal_irq (struct net_device*,struct cas*,int const) ;
 int cas_post_rxcs_ringN (struct net_device*,struct cas*,int ) ;
 int cas_post_rxds_ringN (struct cas*,int ,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void cas_handle_irq(struct net_device *dev,
      struct cas *cp, const u32 status)
{

 if (status & INTR_ERROR_MASK)
  cas_abnormal_irq(dev, cp, status);

 if (status & INTR_RX_BUF_UNAVAIL) {



  cas_post_rxds_ringN(cp, 0, 0);
  spin_lock(&cp->stat_lock[0]);
  cp->net_stats[0].rx_dropped++;
  spin_unlock(&cp->stat_lock[0]);
 } else if (status & INTR_RX_BUF_AE) {
  cas_post_rxds_ringN(cp, 0, RX_DESC_RINGN_SIZE(0) -
        RX_AE_FREEN_VAL(0));
 }

 if (status & (INTR_RX_COMP_AF | INTR_RX_COMP_FULL))
  cas_post_rxcs_ringN(dev, cp, 0);
}
