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
struct TYPE_6__ {unsigned int num_planes; TYPE_1__* plane_fmt; } ;
struct TYPE_5__ {int /*<<< orphan*/  paddr; } ;
struct sun4i_csi {int /*<<< orphan*/ ** current_buf; TYPE_3__ fmt; scalar_t__ regs; int /*<<< orphan*/  dev; TYPE_2__ scratch; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {scalar_t__ sizeimage; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct sun4i_csi *csi,
					  unsigned int slot)
{
	dma_addr_t addr = csi->scratch.paddr;
	unsigned int plane;

	FUNC1(csi->dev,
		"No more available buffer, using the scratch buffer\n");

	for (plane = 0; plane < csi->fmt.num_planes; plane++) {
		FUNC2(addr, csi->regs + FUNC0(plane, slot));
		addr += csi->fmt.plane_fmt[plane].sizeimage;
	}

	csi->current_buf[slot] = NULL;
	return 0;
}