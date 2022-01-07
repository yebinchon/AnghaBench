
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct myri10ge_priv {int features; int max_tso6; int max_intr_slots; TYPE_1__* pdev; } ;
struct myri10ge_cmd {int data0; } ;
struct mcp_dma_addr {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int ENXIO ;
 int MXGEFW_CMD_GET_MAX_TSO6_HDR_SIZE ;
 int MXGEFW_CMD_GET_RX_RING_SIZE ;
 int NETIF_F_HW_CSUM ;
 int NETIF_F_SG ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int dev_err (int *,char*) ;
 int myri10ge_send_cmd (struct myri10ge_priv*,int ,struct myri10ge_cmd*,int ) ;

__attribute__((used)) static int myri10ge_get_firmware_capabilities(struct myri10ge_priv *mgp)
{
 struct myri10ge_cmd cmd;
 int status;


 mgp->features = NETIF_F_SG | NETIF_F_HW_CSUM | NETIF_F_TSO;
 status = myri10ge_send_cmd(mgp, MXGEFW_CMD_GET_MAX_TSO6_HDR_SIZE,
       &cmd, 0);
 if (status == 0) {
  mgp->max_tso6 = cmd.data0;
  mgp->features |= NETIF_F_TSO6;
 }

 status = myri10ge_send_cmd(mgp, MXGEFW_CMD_GET_RX_RING_SIZE, &cmd, 0);
 if (status != 0) {
  dev_err(&mgp->pdev->dev,
   "failed MXGEFW_CMD_GET_RX_RING_SIZE\n");
  return -ENXIO;
 }

 mgp->max_intr_slots = 2 * (cmd.data0 / sizeof(struct mcp_dma_addr));

 return 0;
}
