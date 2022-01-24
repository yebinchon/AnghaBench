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
typedef  int u32 ;
struct urb {unsigned char* transfer_buffer; int actual_length; struct cx231xx_dmaqueue* context; } ;
struct cx231xx_dmaqueue {unsigned char* ps_head; } ;
struct cx231xx {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int,struct urb*,struct cx231xx_dmaqueue*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int) ; 

__attribute__((used)) static int FUNC4(struct cx231xx *dev, struct urb *urb)
{
	struct cx231xx_dmaqueue *dma_q = urb->context;
	unsigned char *p_buffer, *buffer;
	u32 buffer_size = 0;

	p_buffer = urb->transfer_buffer;
	buffer_size = urb->actual_length;

	buffer = FUNC2(buffer_size, GFP_ATOMIC);
	if (!buffer)
		return -ENOMEM;

	FUNC3(buffer, dma_q->ps_head, 3);
	FUNC3(buffer+3, p_buffer, buffer_size-3);
	FUNC3(dma_q->ps_head, p_buffer+buffer_size-3, 3);

	p_buffer = buffer;
	FUNC0(p_buffer, buffer_size, urb, dma_q);

	FUNC1(buffer);
	return 0;
}