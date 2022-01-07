
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nic; } ;
struct TYPE_4__ {scalar_t__ available; scalar_t__ entries; scalar_t__ next; scalar_t__ oldest; } ;
struct ipw2100_priv {TYPE_1__ status_queue; int net_dev; TYPE_2__ rx_queue; int rxq_stat; } ;


 int INIT_STAT (int *) ;
 int IPW_DEBUG_INFO (char*) ;
 int IPW_MEM_HOST_SHARED_RX_BD_BASE ;
 int IPW_MEM_HOST_SHARED_RX_BD_SIZE ;
 int IPW_MEM_HOST_SHARED_RX_READ_INDEX ;
 int IPW_MEM_HOST_SHARED_RX_STATUS_BASE ;
 int IPW_MEM_HOST_SHARED_RX_WRITE_INDEX ;
 int SET_STAT (int *,scalar_t__) ;
 int bd_queue_initialize (struct ipw2100_priv*,TYPE_2__*,int ,int ,int ,int ) ;
 int write_register (int ,int ,int ) ;

__attribute__((used)) static void ipw2100_rx_initialize(struct ipw2100_priv *priv)
{
 IPW_DEBUG_INFO("enter\n");

 priv->rx_queue.oldest = 0;
 priv->rx_queue.available = priv->rx_queue.entries - 1;
 priv->rx_queue.next = priv->rx_queue.entries - 1;

 INIT_STAT(&priv->rxq_stat);
 SET_STAT(&priv->rxq_stat, priv->rx_queue.available);

 bd_queue_initialize(priv, &priv->rx_queue,
       IPW_MEM_HOST_SHARED_RX_BD_BASE,
       IPW_MEM_HOST_SHARED_RX_BD_SIZE,
       IPW_MEM_HOST_SHARED_RX_READ_INDEX,
       IPW_MEM_HOST_SHARED_RX_WRITE_INDEX);


 write_register(priv->net_dev, IPW_MEM_HOST_SHARED_RX_STATUS_BASE,
         priv->status_queue.nic);

 IPW_DEBUG_INFO("exit\n");
}
