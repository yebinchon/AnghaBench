
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct cpsw_priv {TYPE_4__* ndev; int mac_addr; struct cpsw_common* cpsw; } ;
struct TYPE_7__ {scalar_t__ dual_emac; } ;
struct cpsw_common {int ale; TYPE_3__ data; TYPE_2__* host_port_regs; TYPE_1__* regs; } ;
struct TYPE_8__ {int broadcast; } ;
struct TYPE_6__ {int cpdma_rx_chan_map; int cpdma_tx_pri_map; int tx_in_ctl; } ;
struct TYPE_5__ {int control; int soft_reset; } ;


 int ALE_MCAST_FWD_2 ;
 int ALE_PORT_HOST ;
 int ALE_PORT_STATE ;
 int ALE_PORT_STATE_FORWARD ;
 int ALE_VLAN_AWARE ;
 int CPDMA_TX_PRIORITY_MAP ;
 int CPSW_ALE_VLAN_AWARE ;
 int CPSW_FIFO_DUAL_MAC_MODE ;
 int CPSW_FIFO_NORMAL_MODE ;
 int CPSW_RX_VLAN_ENCAP ;
 int CPSW_VLAN_AWARE ;
 int HOST_PORT_NUM ;
 int cpsw_ale_add_mcast (int ,int ,int ,int ,int ,int ) ;
 int cpsw_ale_add_ucast (int ,int ,int ,int ,int ) ;
 int cpsw_ale_control_set (int ,int ,int ,int ) ;
 int cpsw_ale_start (int ) ;
 int readl (int *) ;
 int soft_reset (char*,int *) ;
 int writel (int,int *) ;
 int writel_relaxed (int ,int *) ;

__attribute__((used)) static void cpsw_init_host_port(struct cpsw_priv *priv)
{
 u32 fifo_mode;
 u32 control_reg;
 struct cpsw_common *cpsw = priv->cpsw;


 soft_reset("cpsw", &cpsw->regs->soft_reset);
 cpsw_ale_start(cpsw->ale);


 cpsw_ale_control_set(cpsw->ale, HOST_PORT_NUM, ALE_VLAN_AWARE,
        CPSW_ALE_VLAN_AWARE);
 control_reg = readl(&cpsw->regs->control);
 control_reg |= CPSW_VLAN_AWARE | CPSW_RX_VLAN_ENCAP;
 writel(control_reg, &cpsw->regs->control);
 fifo_mode = (cpsw->data.dual_emac) ? CPSW_FIFO_DUAL_MAC_MODE :
       CPSW_FIFO_NORMAL_MODE;
 writel(fifo_mode, &cpsw->host_port_regs->tx_in_ctl);


 writel_relaxed(CPDMA_TX_PRIORITY_MAP,
         &cpsw->host_port_regs->cpdma_tx_pri_map);
 writel_relaxed(0, &cpsw->host_port_regs->cpdma_rx_chan_map);

 cpsw_ale_control_set(cpsw->ale, HOST_PORT_NUM,
        ALE_PORT_STATE, ALE_PORT_STATE_FORWARD);

 if (!cpsw->data.dual_emac) {
  cpsw_ale_add_ucast(cpsw->ale, priv->mac_addr, HOST_PORT_NUM,
       0, 0);
  cpsw_ale_add_mcast(cpsw->ale, priv->ndev->broadcast,
       ALE_PORT_HOST, 0, 0, ALE_MCAST_FWD_2);
 }
}
