
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hns3_nic_priv {TYPE_3__* tqp_vector; int rx_coal; int tx_coal; } ;
struct hns3_enet_coalesce {int dummy; } ;
struct TYPE_5__ {int coal; } ;
struct TYPE_4__ {int coal; } ;
struct TYPE_6__ {TYPE_2__ rx_group; TYPE_1__ tx_group; } ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void hns3_store_coal(struct hns3_nic_priv *priv)
{




 memcpy(&priv->tx_coal, &priv->tqp_vector[0].tx_group.coal,
        sizeof(struct hns3_enet_coalesce));
 memcpy(&priv->rx_coal, &priv->tqp_vector[0].rx_group.coal,
        sizeof(struct hns3_enet_coalesce));
}
