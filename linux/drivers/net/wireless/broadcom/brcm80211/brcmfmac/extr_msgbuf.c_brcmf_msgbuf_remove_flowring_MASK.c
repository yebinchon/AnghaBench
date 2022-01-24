#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  size_t u16 ;
struct brcmf_msgbuf {int /*<<< orphan*/  flow; int /*<<< orphan*/ * flowring_dma_handle; TYPE_3__* drvr; TYPE_1__** flowrings; } ;
struct TYPE_6__ {TYPE_2__* bus_if; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {void* buf_addr; } ;

/* Variables and functions */
 int BRCMF_H2D_TXFLOWRING_ITEMSIZE ; 
 int BRCMF_H2D_TXFLOWRING_MAX_ITEM ; 
 int /*<<< orphan*/  MSGBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct brcmf_msgbuf *msgbuf, u16 flowid)
{
	u32 dma_sz;
	void *dma_buf;

	FUNC0(MSGBUF, "Removing flowring %d\n", flowid);

	dma_sz = BRCMF_H2D_TXFLOWRING_MAX_ITEM * BRCMF_H2D_TXFLOWRING_ITEMSIZE;
	dma_buf = msgbuf->flowrings[flowid]->buf_addr;
	FUNC2(msgbuf->drvr->bus_if->dev, dma_sz, dma_buf,
			  msgbuf->flowring_dma_handle[flowid]);

	FUNC1(msgbuf->flow, flowid);
}