
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_desc_ops {int rx_desc_init; int tx_desc_init; int unmap_desc_data; int map_rx_buffer; int map_tx_skb; int free_channels_and_rings; int alloc_channles_and_rings; } ;


 int xlgmac_alloc_channels_and_rings ;
 int xlgmac_free_channels_and_rings ;
 int xlgmac_map_rx_buffer ;
 int xlgmac_map_tx_skb ;
 int xlgmac_rx_desc_init ;
 int xlgmac_tx_desc_init ;
 int xlgmac_unmap_desc_data ;

void xlgmac_init_desc_ops(struct xlgmac_desc_ops *desc_ops)
{
 desc_ops->alloc_channles_and_rings = xlgmac_alloc_channels_and_rings;
 desc_ops->free_channels_and_rings = xlgmac_free_channels_and_rings;
 desc_ops->map_tx_skb = xlgmac_map_tx_skb;
 desc_ops->map_rx_buffer = xlgmac_map_rx_buffer;
 desc_ops->unmap_desc_data = xlgmac_unmap_desc_data;
 desc_ops->tx_desc_init = xlgmac_tx_desc_init;
 desc_ops->rx_desc_init = xlgmac_rx_desc_init;
}
