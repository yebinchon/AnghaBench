
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int FEC_ENET_MAX_RX_QS ;
 int FEC_ENET_MAX_TX_QS ;
 int dev_warn (TYPE_1__*,char*,int) ;
 int of_device_is_available (struct device_node*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;

__attribute__((used)) static void
fec_enet_get_queue_num(struct platform_device *pdev, int *num_tx, int *num_rx)
{
 struct device_node *np = pdev->dev.of_node;

 *num_tx = *num_rx = 1;

 if (!np || !of_device_is_available(np))
  return;


 of_property_read_u32(np, "fsl,num-tx-queues", num_tx);

 of_property_read_u32(np, "fsl,num-rx-queues", num_rx);

 if (*num_tx < 1 || *num_tx > FEC_ENET_MAX_TX_QS) {
  dev_warn(&pdev->dev, "Invalid num_tx(=%d), fall back to 1\n",
    *num_tx);
  *num_tx = 1;
  return;
 }

 if (*num_rx < 1 || *num_rx > FEC_ENET_MAX_RX_QS) {
  dev_warn(&pdev->dev, "Invalid num_rx(=%d), fall back to 1\n",
    *num_rx);
  *num_rx = 1;
  return;
 }

}
