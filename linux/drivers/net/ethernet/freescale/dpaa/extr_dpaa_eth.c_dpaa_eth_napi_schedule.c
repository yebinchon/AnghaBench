
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qman_portal {int dummy; } ;
struct TYPE_2__ {int napi; struct qman_portal* p; } ;
struct dpaa_percpu_priv {int in_interrupt; TYPE_1__ np; } ;


 int QM_PIRQ_DQRI ;
 scalar_t__ in_irq () ;
 int in_serving_softirq () ;
 int napi_schedule (int *) ;
 int qman_p_irqsource_remove (struct qman_portal*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int dpaa_eth_napi_schedule(struct dpaa_percpu_priv *percpu_priv,
      struct qman_portal *portal)
{
 if (unlikely(in_irq() || !in_serving_softirq())) {

  qman_p_irqsource_remove(portal, QM_PIRQ_DQRI);

  percpu_priv->np.p = portal;
  napi_schedule(&percpu_priv->np.napi);
  percpu_priv->in_interrupt++;
  return 1;
 }
 return 0;
}
