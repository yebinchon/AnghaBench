
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p54_common {TYPE_1__* tx_stats; } ;
struct TYPE_2__ {scalar_t__ len; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int BUILD_BUG_ON (int) ;
 unsigned int P54_QUEUE_MGMT ;
 unsigned int P54_QUEUE_NUM ;

__attribute__((used)) static unsigned int p54_flush_count(struct p54_common *priv)
{
 unsigned int total = 0, i;

 BUILD_BUG_ON(P54_QUEUE_NUM > ARRAY_SIZE(priv->tx_stats));






 for (i = P54_QUEUE_MGMT; i < P54_QUEUE_NUM; i++)
  total += priv->tx_stats[i].len;
 return total;
}
