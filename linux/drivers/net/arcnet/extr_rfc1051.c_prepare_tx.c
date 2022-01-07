
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int (* copy_to_card ) (struct net_device*,int,int,struct arc_hardware*,int) ;} ;
struct arcnet_local {int lastload_dest; TYPE_1__ hw; int cur_tx; int next_tx; } ;
struct arc_hardware {int* offset; int dest; } ;
struct archdr {struct arc_hardware soft; struct arc_hardware hard; } ;


 int ARC_HDR_SIZE ;
 int D_DURING ;
 int D_NORMAL ;
 int MTU ;
 int MinTU ;
 int XMTU ;
 int arc_printk (int ,struct net_device*,char*,int,int,...) ;
 struct arcnet_local* netdev_priv (struct net_device*) ;
 int stub1 (struct net_device*,int,int,struct arc_hardware*,int) ;
 int stub2 (struct net_device*,int,int,struct arc_hardware*,int) ;

__attribute__((used)) static int prepare_tx(struct net_device *dev, struct archdr *pkt, int length,
        int bufnum)
{
 struct arcnet_local *lp = netdev_priv(dev);
 struct arc_hardware *hard = &pkt->hard;
 int ofs;

 arc_printk(D_DURING, dev, "prepare_tx: txbufs=%d/%d/%d\n",
     lp->next_tx, lp->cur_tx, bufnum);


 length -= ARC_HDR_SIZE;

 if (length > XMTU) {

  arc_printk(D_NORMAL, dev, "Bug!  prepare_tx with size %d (> %d)\n",
      length, XMTU);
  length = XMTU;
 }
 if (length > MinTU) {
  hard->offset[0] = 0;
  hard->offset[1] = ofs = 512 - length;
 } else if (length > MTU) {
  hard->offset[0] = 0;
  hard->offset[1] = ofs = 512 - length - 3;
 } else {
  hard->offset[0] = ofs = 256 - length;
 }

 lp->hw.copy_to_card(dev, bufnum, 0, hard, ARC_HDR_SIZE);
 lp->hw.copy_to_card(dev, bufnum, ofs, &pkt->soft, length);

 lp->lastload_dest = hard->dest;

 return 1;
}
