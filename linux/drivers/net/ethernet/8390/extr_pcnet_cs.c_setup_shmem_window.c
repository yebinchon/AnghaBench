
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct pcnet_dev {int flags; int * base; } ;
struct pcmcia_device {TYPE_1__** resource; struct net_device* priv; } ;
struct net_device {scalar_t__ mem_start; scalar_t__ mem_end; } ;
struct TYPE_7__ {int priv; int tx_start_page; int rx_start_page; int stop_page; int block_output; int block_input; int get_8390_hdr; int * mem; } ;
struct TYPE_6__ {int flags; int end; scalar_t__ start; } ;


 int ENOMEM ;
 struct pcnet_dev* PRIV (struct net_device*) ;
 int TX_PAGES ;
 int USE_SHMEM ;
 int WIN_DATA_WIDTH_16 ;
 int WIN_ENABLE ;
 int WIN_MEMORY_TYPE_CM ;
 int WIN_USE_WAIT ;
 int __raw_readw (int *) ;
 int __raw_writew (int,int *) ;
 TYPE_5__ ei_status ;
 int * ioremap (scalar_t__,int) ;
 int iounmap (int *) ;
 int mem_speed ;
 int pcmcia_map_mem_page (struct pcmcia_device*,TYPE_1__*,int) ;
 int pcmcia_release_window (struct pcmcia_device*,TYPE_1__*) ;
 int pcmcia_request_window (struct pcmcia_device*,TYPE_1__*,int ) ;
 int pcnet_reset_8390 (struct net_device*) ;
 int resource_size (TYPE_1__*) ;
 int roundup_pow_of_two (int) ;
 int shmem_block_input ;
 int shmem_block_output ;
 int shmem_get_8390_hdr ;
 int udelay (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int setup_shmem_window(struct pcmcia_device *link, int start_pg,
         int stop_pg, int cm_offset)
{
    struct net_device *dev = link->priv;
    struct pcnet_dev *info = PRIV(dev);
    int i, window_size, offset, ret;

    window_size = (stop_pg - start_pg) << 8;
    if (window_size > 32 * 1024)
 window_size = 32 * 1024;


    window_size = roundup_pow_of_two(window_size);


    link->resource[3]->flags |= WIN_DATA_WIDTH_16|WIN_MEMORY_TYPE_CM|WIN_ENABLE;
    link->resource[3]->flags |= WIN_USE_WAIT;
    link->resource[3]->start = 0; link->resource[3]->end = window_size;
    ret = pcmcia_request_window(link, link->resource[3], mem_speed);
    if (ret)
     goto failed;

    offset = (start_pg << 8) + cm_offset;
    offset -= offset % window_size;
    ret = pcmcia_map_mem_page(link, link->resource[3], offset);
    if (ret)
     goto failed;


    info->base = ioremap(link->resource[3]->start,
   resource_size(link->resource[3]));
    if (unlikely(!info->base)) {
     ret = -ENOMEM;
     goto failed;
    }

    for (i = 0; i < (TX_PAGES<<8); i += 2)
 __raw_writew((i>>1), info->base+offset+i);
    udelay(100);
    for (i = 0; i < (TX_PAGES<<8); i += 2)
 if (__raw_readw(info->base+offset+i) != (i>>1)) break;
    pcnet_reset_8390(dev);
    if (i != (TX_PAGES<<8)) {
 iounmap(info->base);
 pcmcia_release_window(link, link->resource[3]);
 info->base = ((void*)0);
 goto failed;
    }

    ei_status.mem = info->base + offset;
    ei_status.priv = resource_size(link->resource[3]);
    dev->mem_start = (u_long)ei_status.mem;
    dev->mem_end = dev->mem_start + resource_size(link->resource[3]);

    ei_status.tx_start_page = start_pg;
    ei_status.rx_start_page = start_pg + TX_PAGES;
    ei_status.stop_page = start_pg + (
     (resource_size(link->resource[3]) - offset) >> 8);


    ei_status.get_8390_hdr = shmem_get_8390_hdr;
    ei_status.block_input = shmem_block_input;
    ei_status.block_output = shmem_block_output;

    info->flags |= USE_SHMEM;
    return 0;

failed:
    return 1;
}
