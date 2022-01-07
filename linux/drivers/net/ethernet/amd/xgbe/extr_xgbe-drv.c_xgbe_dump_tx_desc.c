
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
 int netdev_dbg (int ,char*,unsigned int,char*,int ,int ,int ,int ) ;

void xgbe_dump_tx_desc(struct xgbe_prv_data *pdata, struct xgbe_ring *ring,
         unsigned int idx, unsigned int count, unsigned int flag)
{
 struct xgbe_ring_data *rdata;
 struct xgbe_ring_desc *rdesc;

 while (count--) {
  rdata = XGBE_GET_DESC_DATA(ring, idx);
  rdesc = rdata->rdesc;
  netdev_dbg(pdata->netdev,
      "TX_NORMAL_DESC[%d %s] = %08x:%08x:%08x:%08x\n", idx,
      (flag == 1) ? "QUEUED FOR TX" : "TX BY DEVICE",
      le32_to_cpu(rdesc->desc0),
      le32_to_cpu(rdesc->desc1),
      le32_to_cpu(rdesc->desc2),
      le32_to_cpu(rdesc->desc3));
  idx++;
 }
}
