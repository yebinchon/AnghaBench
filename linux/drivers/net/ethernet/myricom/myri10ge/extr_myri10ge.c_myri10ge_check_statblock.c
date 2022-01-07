
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct myri10ge_priv {unsigned int link_state; void* rdma_tags_available; int down_wq; int down_cnt; int dev; int link_changes; TYPE_1__* ss; } ;
struct mcp_irq_data {scalar_t__ link_down; int rdma_tags_available; int link_up; int stats_updated; } ;
struct TYPE_2__ {struct mcp_irq_data* fw_stats; } ;


 unsigned int MXGEFW_LINK_MYRINET ;
 unsigned int MXGEFW_LINK_UP ;
 int link ;
 int netdev_warn (int ,char*,void*) ;
 int netif_carrier_off (int ) ;
 int netif_carrier_on (int ) ;
 int netif_info (struct myri10ge_priv*,int ,int ,char*,...) ;
 void* ntohl (int ) ;
 scalar_t__ unlikely (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void myri10ge_check_statblock(struct myri10ge_priv *mgp)
{
 struct mcp_irq_data *stats = mgp->ss[0].fw_stats;

 if (unlikely(stats->stats_updated)) {
  unsigned link_up = ntohl(stats->link_up);
  if (mgp->link_state != link_up) {
   mgp->link_state = link_up;

   if (mgp->link_state == MXGEFW_LINK_UP) {
    netif_info(mgp, link, mgp->dev, "link up\n");
    netif_carrier_on(mgp->dev);
    mgp->link_changes++;
   } else {
    netif_info(mgp, link, mgp->dev, "link %s\n",
        (link_up == MXGEFW_LINK_MYRINET ?
         "mismatch (Myrinet detected)" :
         "down"));
    netif_carrier_off(mgp->dev);
    mgp->link_changes++;
   }
  }
  if (mgp->rdma_tags_available !=
      ntohl(stats->rdma_tags_available)) {
   mgp->rdma_tags_available =
       ntohl(stats->rdma_tags_available);
   netdev_warn(mgp->dev, "RDMA timed out! %d tags left\n",
        mgp->rdma_tags_available);
  }
  mgp->down_cnt += stats->link_down;
  if (stats->link_down)
   wake_up(&mgp->down_wq);
 }
}
