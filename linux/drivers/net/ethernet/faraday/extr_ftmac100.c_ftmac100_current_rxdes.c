
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ftmac100_rxdes {int dummy; } ;
struct ftmac100 {size_t rx_pointer; TYPE_1__* descs; } ;
struct TYPE_2__ {struct ftmac100_rxdes* rxdes; } ;



__attribute__((used)) static struct ftmac100_rxdes *ftmac100_current_rxdes(struct ftmac100 *priv)
{
 return &priv->descs->rxdes[priv->rx_pointer];
}
