
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_ring_desc {int desc3; int desc2; int desc1; int desc0; } ;
struct xgbe_ring_data {struct xgbe_ring_desc* rdesc; } ;
struct xgbe_ring {int dummy; } ;
struct xgbe_prv_data {int netdev; } ;


 struct xgbe_ring_data* XGBE_GET_DESC_DATA (struct xgbe_ring*,unsigned int) ;
 int le32_to_cpu (int ) ;
 int netdev_dbg (int ,char*,unsigned int,int ,int ,int ,int ) ;

void xgbe_dump_rx_desc(struct xgbe_prv_data *pdata, struct xgbe_ring *ring,
         unsigned int idx)
{
 struct xgbe_ring_data *rdata;
 struct xgbe_ring_desc *rdesc;

 rdata = XGBE_GET_DESC_DATA(ring, idx);
 rdesc = rdata->rdesc;
 netdev_dbg(pdata->netdev,
     "RX_NORMAL_DESC[%d RX BY DEVICE] = %08x:%08x:%08x:%08x\n",
     idx, le32_to_cpu(rdesc->desc0), le32_to_cpu(rdesc->desc1),
     le32_to_cpu(rdesc->desc2), le32_to_cpu(rdesc->desc3));
}
