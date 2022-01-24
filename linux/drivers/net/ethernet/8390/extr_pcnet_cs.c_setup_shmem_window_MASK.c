#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_long ;
struct pcnet_dev {int /*<<< orphan*/  flags; int /*<<< orphan*/ * base; } ;
struct pcmcia_device {TYPE_1__** resource; struct net_device* priv; } ;
struct net_device {scalar_t__ mem_start; scalar_t__ mem_end; } ;
struct TYPE_7__ {int priv; int tx_start_page; int rx_start_page; int stop_page; int /*<<< orphan*/  block_output; int /*<<< orphan*/  block_input; int /*<<< orphan*/  get_8390_hdr; int /*<<< orphan*/ * mem; } ;
struct TYPE_6__ {int flags; int end; scalar_t__ start; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct pcnet_dev* FUNC0 (struct net_device*) ; 
 int TX_PAGES ; 
 int /*<<< orphan*/  USE_SHMEM ; 
 int WIN_DATA_WIDTH_16 ; 
 int WIN_ENABLE ; 
 int WIN_MEMORY_TYPE_CM ; 
 int WIN_USE_WAIT ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 TYPE_5__ ei_status ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mem_speed ; 
 int FUNC5 (struct pcmcia_device*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pcmcia_device*,TYPE_1__*) ; 
 int FUNC7 (struct pcmcia_device*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int FUNC9 (TYPE_1__*) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  shmem_block_input ; 
 int /*<<< orphan*/  shmem_block_output ; 
 int /*<<< orphan*/  shmem_get_8390_hdr ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct pcmcia_device *link, int start_pg,
			      int stop_pg, int cm_offset)
{
    struct net_device *dev = link->priv;
    struct pcnet_dev *info = FUNC0(dev);
    int i, window_size, offset, ret;

    window_size = (stop_pg - start_pg) << 8;
    if (window_size > 32 * 1024)
	window_size = 32 * 1024;

    /* Make sure it's a power of two.  */
    window_size = FUNC10(window_size);

    /* Allocate a memory window */
    link->resource[3]->flags |= WIN_DATA_WIDTH_16|WIN_MEMORY_TYPE_CM|WIN_ENABLE;
    link->resource[3]->flags |= WIN_USE_WAIT;
    link->resource[3]->start = 0; link->resource[3]->end = window_size;
    ret = FUNC7(link, link->resource[3], mem_speed);
    if (ret)
	    goto failed;

    offset = (start_pg << 8) + cm_offset;
    offset -= offset % window_size;
    ret = FUNC5(link, link->resource[3], offset);
    if (ret)
	    goto failed;

    /* Try scribbling on the buffer */
    info->base = FUNC3(link->resource[3]->start,
			FUNC9(link->resource[3]));
    if (FUNC12(!info->base)) {
	    ret = -ENOMEM;
	    goto failed;
    }

    for (i = 0; i < (TX_PAGES<<8); i += 2)
	FUNC2((i>>1), info->base+offset+i);
    FUNC11(100);
    for (i = 0; i < (TX_PAGES<<8); i += 2)
	if (FUNC1(info->base+offset+i) != (i>>1)) break;
    FUNC8(dev);
    if (i != (TX_PAGES<<8)) {
	FUNC4(info->base);
	FUNC6(link, link->resource[3]);
	info->base = NULL;
	goto failed;
    }

    ei_status.mem = info->base + offset;
    ei_status.priv = FUNC9(link->resource[3]);
    dev->mem_start = (u_long)ei_status.mem;
    dev->mem_end = dev->mem_start + FUNC9(link->resource[3]);

    ei_status.tx_start_page = start_pg;
    ei_status.rx_start_page = start_pg + TX_PAGES;
    ei_status.stop_page = start_pg + (
	    (FUNC9(link->resource[3]) - offset) >> 8);

    /* set up block i/o functions */
    ei_status.get_8390_hdr = shmem_get_8390_hdr;
    ei_status.block_input = shmem_block_input;
    ei_status.block_output = shmem_block_output;

    info->flags |= USE_SHMEM;
    return 0;

failed:
    return 1;
}