
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct port {TYPE_1__** rx_buff_tab; TYPE_3__* netdev; TYPE_1__** tx_buff_tab; TYPE_1__** desc_tab; int desc_tab_phys; } ;
struct desc {int data; int buf_len; } ;
struct TYPE_8__ {void* data; } ;
typedef TYPE_1__ buffer_t ;
struct TYPE_9__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int DRV_NAME ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int POOL_ALLOC_SIZE ;
 int RX_DESCS ;
 int RX_SIZE ;
 int dma_map_single (int *,void*,int ,int ) ;
 scalar_t__ dma_mapping_error (int *,int ) ;
 int dma_pool ;
 TYPE_1__** dma_pool_alloc (int ,int ,int *) ;
 int dma_pool_create (int ,int *,int,int,int ) ;
 int free_buffer (TYPE_1__*) ;
 TYPE_1__* kmalloc (int ,int ) ;
 int memset (TYPE_1__**,int ,int) ;
 TYPE_1__* netdev_alloc_skb (TYPE_3__*,int ) ;
 int ports_open ;
 struct desc* rx_desc_ptr (struct port*,int) ;

__attribute__((used)) static int init_hdlc_queues(struct port *port)
{
 int i;

 if (!ports_open) {
  dma_pool = dma_pool_create(DRV_NAME, &port->netdev->dev,
        POOL_ALLOC_SIZE, 32, 0);
  if (!dma_pool)
   return -ENOMEM;
 }

 if (!(port->desc_tab = dma_pool_alloc(dma_pool, GFP_KERNEL,
           &port->desc_tab_phys)))
  return -ENOMEM;
 memset(port->desc_tab, 0, POOL_ALLOC_SIZE);
 memset(port->rx_buff_tab, 0, sizeof(port->rx_buff_tab));
 memset(port->tx_buff_tab, 0, sizeof(port->tx_buff_tab));


 for (i = 0; i < RX_DESCS; i++) {
  struct desc *desc = rx_desc_ptr(port, i);
  buffer_t *buff;
  void *data;





  if (!(buff = kmalloc(RX_SIZE, GFP_KERNEL)))
   return -ENOMEM;
  data = buff;

  desc->buf_len = RX_SIZE;
  desc->data = dma_map_single(&port->netdev->dev, data,
         RX_SIZE, DMA_FROM_DEVICE);
  if (dma_mapping_error(&port->netdev->dev, desc->data)) {
   free_buffer(buff);
   return -EIO;
  }
  port->rx_buff_tab[i] = buff;
 }

 return 0;
}
