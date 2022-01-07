
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct hns3_nic_priv {int vector_num; int rx_coal; TYPE_3__* tqp_vector; int tx_coal; } ;
struct hns3_enet_coalesce {int dummy; } ;
struct TYPE_4__ {int coal; } ;
struct TYPE_5__ {int coal; } ;
struct TYPE_6__ {TYPE_1__ rx_group; TYPE_2__ tx_group; } ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void hns3_restore_coal(struct hns3_nic_priv *priv)
{
 u16 vector_num = priv->vector_num;
 int i;

 for (i = 0; i < vector_num; i++) {
  memcpy(&priv->tqp_vector[i].tx_group.coal, &priv->tx_coal,
         sizeof(struct hns3_enet_coalesce));
  memcpy(&priv->tqp_vector[i].rx_group.coal, &priv->rx_coal,
         sizeof(struct hns3_enet_coalesce));
 }
}
