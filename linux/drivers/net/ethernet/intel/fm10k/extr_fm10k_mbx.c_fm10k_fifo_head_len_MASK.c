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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct fm10k_mbx_fifo {int /*<<< orphan*/ * buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct fm10k_mbx_fifo*) ; 
 int FUNC2 (struct fm10k_mbx_fifo*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC3(struct fm10k_mbx_fifo *fifo)
{
	u32 *head = fifo->buffer + FUNC2(fifo, 0);

	/* verify there is at least 1 DWORD in the fifo so *head is valid */
	if (FUNC1(fifo))
		return 0;

	/* retieve the message length */
	return FUNC0(*head);
}