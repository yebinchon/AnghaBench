
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hip04_priv {int tx_coalesce_usecs; int tx_coalesce_timer; } ;


 int HRTIMER_MODE_REL ;
 int NSEC_PER_USEC ;
 int hrtimer_start_range_ns (int *,int ,unsigned long,int ) ;
 int ns_to_ktime (unsigned long) ;

__attribute__((used)) static void hip04_start_tx_timer(struct hip04_priv *priv)
{
 unsigned long ns = priv->tx_coalesce_usecs * NSEC_PER_USEC / 2;


 hrtimer_start_range_ns(&priv->tx_coalesce_timer, ns_to_ktime(ns),
          ns, HRTIMER_MODE_REL);
}
