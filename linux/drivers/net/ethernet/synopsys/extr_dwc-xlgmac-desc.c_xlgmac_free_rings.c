
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_pdata {unsigned int channel_count; struct xlgmac_channel* channel_head; } ;
struct xlgmac_channel {int rx_ring; int tx_ring; } ;


 int xlgmac_free_ring (struct xlgmac_pdata*,int ) ;

__attribute__((used)) static void xlgmac_free_rings(struct xlgmac_pdata *pdata)
{
 struct xlgmac_channel *channel;
 unsigned int i;

 if (!pdata->channel_head)
  return;

 channel = pdata->channel_head;
 for (i = 0; i < pdata->channel_count; i++, channel++) {
  xlgmac_free_ring(pdata, channel->tx_ring);
  xlgmac_free_ring(pdata, channel->rx_ring);
 }
}
