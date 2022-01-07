
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {unsigned int channel_count; struct xgbe_channel** channel; } ;
struct xgbe_channel {int rx_ring; int tx_ring; } ;


 int DBGPR (char*) ;
 int xgbe_free_ring (struct xgbe_prv_data*,int ) ;

__attribute__((used)) static void xgbe_free_ring_resources(struct xgbe_prv_data *pdata)
{
 struct xgbe_channel *channel;
 unsigned int i;

 DBGPR("-->xgbe_free_ring_resources\n");

 for (i = 0; i < pdata->channel_count; i++) {
  channel = pdata->channel[i];
  xgbe_free_ring(pdata, channel->tx_ring);
  xgbe_free_ring(pdata, channel->rx_ring);
 }

 DBGPR("<--xgbe_free_ring_resources\n");
}
