
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct napi_struct {struct net_device* dev; } ;
struct TYPE_2__ {int ctrlmode; } ;
struct ifi_canfd_priv {TYPE_1__ can; scalar_t__ base; } ;


 int CAN_CTRLMODE_BERR_REPORTING ;
 scalar_t__ IFI_CANFD_RXSTCMD ;
 int IFI_CANFD_RXSTCMD_EMPTY ;
 int IFI_CANFD_RXSTCMD_OVERFLOW ;
 scalar_t__ ifi_canfd_do_rx_poll (struct net_device*,int) ;
 scalar_t__ ifi_canfd_handle_lec_err (struct net_device*) ;
 scalar_t__ ifi_canfd_handle_lost_msg (struct net_device*) ;
 scalar_t__ ifi_canfd_handle_state_errors (struct net_device*) ;
 int ifi_canfd_irq_enable (struct net_device*,int) ;
 int napi_complete_done (struct napi_struct*,int) ;
 struct ifi_canfd_priv* netdev_priv (struct net_device*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int ifi_canfd_poll(struct napi_struct *napi, int quota)
{
 struct net_device *ndev = napi->dev;
 struct ifi_canfd_priv *priv = netdev_priv(ndev);
 u32 rxstcmd = readl(priv->base + IFI_CANFD_RXSTCMD);
 int work_done = 0;


 work_done += ifi_canfd_handle_state_errors(ndev);


 if (rxstcmd & IFI_CANFD_RXSTCMD_OVERFLOW)
  work_done += ifi_canfd_handle_lost_msg(ndev);


 if (priv->can.ctrlmode & CAN_CTRLMODE_BERR_REPORTING)
  work_done += ifi_canfd_handle_lec_err(ndev);


 if (!(rxstcmd & IFI_CANFD_RXSTCMD_EMPTY))
  work_done += ifi_canfd_do_rx_poll(ndev, quota - work_done);

 if (work_done < quota) {
  napi_complete_done(napi, work_done);
  ifi_canfd_irq_enable(ndev, 1);
 }

 return work_done;
}
