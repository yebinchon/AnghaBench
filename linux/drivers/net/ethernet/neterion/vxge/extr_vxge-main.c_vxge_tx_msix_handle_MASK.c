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
struct vxge_fifo {int /*<<< orphan*/  tx_vector_no; scalar_t__ handle; } ;
struct __vxge_hw_channel {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct vxge_fifo*) ; 
 int /*<<< orphan*/  FUNC1 (struct vxge_fifo*) ; 
 int /*<<< orphan*/  FUNC2 (struct __vxge_hw_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct __vxge_hw_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct __vxge_hw_channel*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct vxge_fifo *fifo = (struct vxge_fifo *)dev_id;

	FUNC1(fifo);

	FUNC3((struct __vxge_hw_channel *)fifo->handle,
				  fifo->tx_vector_no);

	FUNC2((struct __vxge_hw_channel *)fifo->handle,
				   fifo->tx_vector_no);

	FUNC0(fifo);

	FUNC4((struct __vxge_hw_channel *)fifo->handle,
				    fifo->tx_vector_no);

	return IRQ_HANDLED;
}