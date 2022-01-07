
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct pch_can_priv {TYPE_2__* regs; TYPE_3__* ndev; } ;
struct net_device_stats {int rx_errors; int rx_over_errors; } ;
struct net_device {int dummy; } ;
struct can_frame {int * data; int can_id; } ;
struct TYPE_6__ {struct net_device_stats stats; } ;
struct TYPE_5__ {TYPE_1__* ifregs; } ;
struct TYPE_4__ {int creq; int cmask; int mcont; } ;


 int CAN_ERR_CRTL ;
 int CAN_ERR_CRTL_RX_OVERFLOW ;
 int PCH_CMASK_CTRL ;
 int PCH_CMASK_RDWR ;
 int PCH_IF_MCONT_MSGLOST ;
 struct sk_buff* alloc_can_err_skb (struct net_device*,struct can_frame**) ;
 int iowrite32 (int,int *) ;
 int netdev_dbg (TYPE_3__*,char*) ;
 struct pch_can_priv* netdev_priv (struct net_device*) ;
 int netif_receive_skb (struct sk_buff*) ;
 int pch_can_bit_clear (int *,int ) ;
 int pch_can_rw_msg_obj (int *,int) ;

__attribute__((used)) static void pch_can_rx_msg_lost(struct net_device *ndev, int obj_id)
{
 struct pch_can_priv *priv = netdev_priv(ndev);
 struct net_device_stats *stats = &(priv->ndev->stats);
 struct sk_buff *skb;
 struct can_frame *cf;

 netdev_dbg(priv->ndev, "Msg Obj is overwritten.\n");
 pch_can_bit_clear(&priv->regs->ifregs[0].mcont,
     PCH_IF_MCONT_MSGLOST);
 iowrite32(PCH_CMASK_RDWR | PCH_CMASK_CTRL,
    &priv->regs->ifregs[0].cmask);
 pch_can_rw_msg_obj(&priv->regs->ifregs[0].creq, obj_id);

 skb = alloc_can_err_skb(ndev, &cf);
 if (!skb)
  return;

 cf->can_id |= CAN_ERR_CRTL;
 cf->data[1] = CAN_ERR_CRTL_RX_OVERFLOW;
 stats->rx_over_errors++;
 stats->rx_errors++;

 netif_receive_skb(skb);
}
