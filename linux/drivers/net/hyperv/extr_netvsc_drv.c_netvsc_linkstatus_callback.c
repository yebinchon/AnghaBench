
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rndis_indicate_status {int status_buf_offset; int status; } ;
struct TYPE_2__ {struct rndis_indicate_status indicate_status; } ;
struct rndis_message {TYPE_1__ msg; } ;
struct netvsc_reconfig {int list; int event; } ;
struct net_device_context {int speed; int dwork; int lock; int reconfig_events; } ;
struct net_device {scalar_t__ reg_state; } ;


 int GFP_ATOMIC ;
 scalar_t__ NETREG_REGISTERED ;
 int RNDIS_STATUS_LINK_SPEED_CHANGE ;
 int RNDIS_STATUS_MEDIA_CONNECT ;
 int RNDIS_STATUS_MEDIA_DISCONNECT ;
 int RNDIS_STATUS_NETWORK_CHANGE ;
 struct netvsc_reconfig* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 int schedule_delayed_work (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void netvsc_linkstatus_callback(struct net_device *net,
    struct rndis_message *resp)
{
 struct rndis_indicate_status *indicate = &resp->msg.indicate_status;
 struct net_device_context *ndev_ctx = netdev_priv(net);
 struct netvsc_reconfig *event;
 unsigned long flags;


 if (indicate->status == RNDIS_STATUS_LINK_SPEED_CHANGE) {
  u32 speed;

  speed = *(u32 *)((void *)indicate
     + indicate->status_buf_offset) / 10000;
  ndev_ctx->speed = speed;
  return;
 }


 if (indicate->status != RNDIS_STATUS_NETWORK_CHANGE &&
     indicate->status != RNDIS_STATUS_MEDIA_CONNECT &&
     indicate->status != RNDIS_STATUS_MEDIA_DISCONNECT)
  return;

 if (net->reg_state != NETREG_REGISTERED)
  return;

 event = kzalloc(sizeof(*event), GFP_ATOMIC);
 if (!event)
  return;
 event->event = indicate->status;

 spin_lock_irqsave(&ndev_ctx->lock, flags);
 list_add_tail(&event->list, &ndev_ctx->reconfig_events);
 spin_unlock_irqrestore(&ndev_ctx->lock, flags);

 schedule_delayed_work(&ndev_ctx->dwork, 0);
}
