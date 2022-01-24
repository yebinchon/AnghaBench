#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vnic_wq_buf {scalar_t__ os_buf; int /*<<< orphan*/  len; int /*<<< orphan*/  dma_addr; scalar_t__ sop; } ;
struct vnic_wq {int /*<<< orphan*/  vdev; } ;
struct enic {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct enic* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct vnic_wq *wq, struct vnic_wq_buf *buf)
{
	struct enic *enic = FUNC3(wq->vdev);

	if (buf->sop)
		FUNC2(enic->pdev, buf->dma_addr,
			buf->len, PCI_DMA_TODEVICE);
	else
		FUNC1(enic->pdev, buf->dma_addr,
			buf->len, PCI_DMA_TODEVICE);

	if (buf->os_buf)
		FUNC0(buf->os_buf);
}