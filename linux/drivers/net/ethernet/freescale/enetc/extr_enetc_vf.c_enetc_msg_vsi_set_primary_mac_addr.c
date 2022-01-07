
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct enetc_ndev_priv {int dev; int si; } ;
struct enetc_msg_swbd {int dma; scalar_t__ vaddr; int size; } ;
struct TYPE_2__ {int id; int type; } ;
struct enetc_msg_cmd_set_primary_mac {int mac; TYPE_1__ header; } ;


 int ALIGN (int,int) ;
 int ENETC_MSG_CMD_MNG_ADD ;
 int ENETC_MSG_CMD_MNG_MAC ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int ,char*,int ) ;
 scalar_t__ dma_alloc_coherent (int ,int ,int *,int ) ;
 int dma_free_coherent (int ,int ,scalar_t__,int ) ;
 int enetc_msg_vsi_send (int ,struct enetc_msg_swbd*) ;
 int memcpy (int *,struct sockaddr*,int) ;

__attribute__((used)) static int enetc_msg_vsi_set_primary_mac_addr(struct enetc_ndev_priv *priv,
           struct sockaddr *saddr)
{
 struct enetc_msg_cmd_set_primary_mac *cmd;
 struct enetc_msg_swbd msg;
 int err;

 msg.size = ALIGN(sizeof(struct enetc_msg_cmd_set_primary_mac), 64);
 msg.vaddr = dma_alloc_coherent(priv->dev, msg.size, &msg.dma,
           GFP_KERNEL);
 if (!msg.vaddr) {
  dev_err(priv->dev, "Failed to alloc Tx msg (size: %d)\n",
   msg.size);
  return -ENOMEM;
 }

 cmd = (struct enetc_msg_cmd_set_primary_mac *)msg.vaddr;
 cmd->header.type = ENETC_MSG_CMD_MNG_MAC;
 cmd->header.id = ENETC_MSG_CMD_MNG_ADD;
 memcpy(&cmd->mac, saddr, sizeof(struct sockaddr));


 err = enetc_msg_vsi_send(priv->si, &msg);

 dma_free_coherent(priv->dev, msg.size, msg.vaddr, msg.dma);

 return err;
}
