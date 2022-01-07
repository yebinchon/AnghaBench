
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_xdp_tx_bq {int count; int * q; } ;
struct net_device {int dummy; } ;


 int trace_xdp_bulk_tx (struct net_device*,int,int,int) ;
 int veth_xdp_xmit (struct net_device*,int,int *,int ) ;
 int xdp_return_frame (int ) ;

__attribute__((used)) static void veth_xdp_flush_bq(struct net_device *dev, struct veth_xdp_tx_bq *bq)
{
 int sent, i, err = 0;

 sent = veth_xdp_xmit(dev, bq->count, bq->q, 0);
 if (sent < 0) {
  err = sent;
  sent = 0;
  for (i = 0; i < bq->count; i++)
   xdp_return_frame(bq->q[i]);
 }
 trace_xdp_bulk_tx(dev, sent, bq->count - sent, err);

 bq->count = 0;
}
