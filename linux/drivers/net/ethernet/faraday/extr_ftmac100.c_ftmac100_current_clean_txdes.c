
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ftmac100_txdes {int dummy; } ;
struct ftmac100 {size_t tx_clean_pointer; TYPE_1__* descs; } ;
struct TYPE_2__ {struct ftmac100_txdes* txdes; } ;



__attribute__((used)) static struct ftmac100_txdes *ftmac100_current_clean_txdes(struct ftmac100 *priv)
{
 return &priv->descs->txdes[priv->tx_clean_pointer];
}
