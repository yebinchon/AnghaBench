
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union e1000_rx_desc_packet_split {int dummy; } e1000_rx_desc_packet_split ;
struct e1000_ring {int count; int size; struct e1000_buffer* buffer_info; int * rx_skb_top; scalar_t__ next_to_use; scalar_t__ next_to_clean; struct e1000_adapter* adapter; } ;
struct e1000_ps_page {int dummy; } ;
struct e1000_buffer {int ps_pages; } ;
struct e1000_adapter {int dummy; } ;


 int ALIGN (int,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PS_PAGE_BUFFERS ;
 int e1000_alloc_ring_dma (struct e1000_adapter*,struct e1000_ring*) ;
 int e_err (char*) ;
 int kcalloc (int ,int,int ) ;
 int kfree (int ) ;
 int vfree (struct e1000_buffer*) ;
 struct e1000_buffer* vzalloc (int) ;

int e1000e_setup_rx_resources(struct e1000_ring *rx_ring)
{
 struct e1000_adapter *adapter = rx_ring->adapter;
 struct e1000_buffer *buffer_info;
 int i, size, desc_len, err = -ENOMEM;

 size = sizeof(struct e1000_buffer) * rx_ring->count;
 rx_ring->buffer_info = vzalloc(size);
 if (!rx_ring->buffer_info)
  goto err;

 for (i = 0; i < rx_ring->count; i++) {
  buffer_info = &rx_ring->buffer_info[i];
  buffer_info->ps_pages = kcalloc(PS_PAGE_BUFFERS,
      sizeof(struct e1000_ps_page),
      GFP_KERNEL);
  if (!buffer_info->ps_pages)
   goto err_pages;
 }

 desc_len = sizeof(union e1000_rx_desc_packet_split);


 rx_ring->size = rx_ring->count * desc_len;
 rx_ring->size = ALIGN(rx_ring->size, 4096);

 err = e1000_alloc_ring_dma(adapter, rx_ring);
 if (err)
  goto err_pages;

 rx_ring->next_to_clean = 0;
 rx_ring->next_to_use = 0;
 rx_ring->rx_skb_top = ((void*)0);

 return 0;

err_pages:
 for (i = 0; i < rx_ring->count; i++) {
  buffer_info = &rx_ring->buffer_info[i];
  kfree(buffer_info->ps_pages);
 }
err:
 vfree(rx_ring->buffer_info);
 e_err("Unable to allocate memory for the receive descriptor ring\n");
 return err;
}
