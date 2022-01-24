#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vb2_queue {int dummy; } ;
struct vb2_buffer {int dummy; } ;
struct dt3155_priv {int width; int config; int csr2; scalar_t__ regs; scalar_t__ sequence; TYPE_1__* curr_buf; } ;
typedef  int dma_addr_t ;
struct TYPE_2__ {struct vb2_buffer vb2_buf; } ;

/* Variables and functions */
 int BUSY_EVEN ; 
 int BUSY_ODD ; 
 int CAP_CONT_EVEN ; 
 int CAP_CONT_ODD ; 
 int /*<<< orphan*/  CONFIG ; 
 scalar_t__ CSR1 ; 
 int /*<<< orphan*/  CSR2 ; 
 int CSR_DONE ; 
 int CSR_ERROR ; 
 int /*<<< orphan*/  EVEN_CSR ; 
 scalar_t__ EVEN_DMA_START ; 
 scalar_t__ EVEN_DMA_STRIDE ; 
 int FIFO_EN ; 
 int FLD_CRPT_EVEN ; 
 int FLD_CRPT_ODD ; 
 int FLD_DN_EVEN ; 
 int FLD_DN_ODD ; 
 int FLD_END_EVEN ; 
 int FLD_END_ODD ; 
 int FLD_END_ODD_EN ; 
 int FLD_START ; 
 int FLD_START_EN ; 
 scalar_t__ INT_CSR ; 
 int /*<<< orphan*/  ODD_CSR ; 
 scalar_t__ ODD_DMA_START ; 
 scalar_t__ ODD_DMA_STRIDE ; 
 int SRST ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int FUNC1 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 struct dt3155_priv* FUNC2 (struct vb2_queue*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct vb2_queue *q, unsigned count)
{
	struct dt3155_priv *pd = FUNC2(q);
	struct vb2_buffer *vb = &pd->curr_buf->vb2_buf;
	dma_addr_t dma_addr;

	pd->sequence = 0;
	dma_addr = FUNC1(vb, 0);
	FUNC0(dma_addr, pd->regs + EVEN_DMA_START);
	FUNC0(dma_addr + pd->width, pd->regs + ODD_DMA_START);
	FUNC0(pd->width, pd->regs + EVEN_DMA_STRIDE);
	FUNC0(pd->width, pd->regs + ODD_DMA_STRIDE);
	/* enable interrupts, clear all irq flags */
	FUNC0(FLD_START_EN | FLD_END_ODD_EN | FLD_START |
			FLD_END_EVEN | FLD_END_ODD, pd->regs + INT_CSR);
	FUNC0(FIFO_EN | SRST | FLD_CRPT_ODD | FLD_CRPT_EVEN |
		  FLD_DN_ODD | FLD_DN_EVEN | CAP_CONT_EVEN | CAP_CONT_ODD,
							pd->regs + CSR1);
	FUNC3(pd->regs);
	FUNC4(pd->regs, CONFIG, pd->config);
	FUNC4(pd->regs, EVEN_CSR, CSR_ERROR | CSR_DONE);
	FUNC4(pd->regs, ODD_CSR, CSR_ERROR | CSR_DONE);

	/*  start the board  */
	FUNC4(pd->regs, CSR2, pd->csr2 | BUSY_EVEN | BUSY_ODD);
	return 0;
}