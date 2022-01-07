
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgbe_ring_data {int dummy; } ;
struct xgbe_ring {unsigned int rdesc_count; } ;
struct xgbe_desc_if {int (* unmap_rdata ) (struct xgbe_prv_data*,struct xgbe_ring_data*) ;} ;
struct xgbe_prv_data {unsigned int channel_count; TYPE_1__** channel; struct xgbe_desc_if desc_if; } ;
struct TYPE_2__ {struct xgbe_ring* rx_ring; } ;


 int DBGPR (char*) ;
 struct xgbe_ring_data* XGBE_GET_DESC_DATA (struct xgbe_ring*,unsigned int) ;
 int stub1 (struct xgbe_prv_data*,struct xgbe_ring_data*) ;

__attribute__((used)) static void xgbe_free_rx_data(struct xgbe_prv_data *pdata)
{
 struct xgbe_desc_if *desc_if = &pdata->desc_if;
 struct xgbe_ring *ring;
 struct xgbe_ring_data *rdata;
 unsigned int i, j;

 DBGPR("-->xgbe_free_rx_data\n");

 for (i = 0; i < pdata->channel_count; i++) {
  ring = pdata->channel[i]->rx_ring;
  if (!ring)
   break;

  for (j = 0; j < ring->rdesc_count; j++) {
   rdata = XGBE_GET_DESC_DATA(ring, j);
   desc_if->unmap_rdata(pdata, rdata);
  }
 }

 DBGPR("<--xgbe_free_rx_data\n");
}
