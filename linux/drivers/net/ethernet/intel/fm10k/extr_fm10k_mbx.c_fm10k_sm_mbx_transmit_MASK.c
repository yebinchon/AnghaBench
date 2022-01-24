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
typedef  scalar_t__ u16 ;
struct fm10k_mbx_fifo {int /*<<< orphan*/ * buffer; } ;
struct fm10k_mbx_info {scalar_t__ mbmem_len; scalar_t__ tail; scalar_t__ tail_len; struct fm10k_mbx_fifo tx; } ;
struct fm10k_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fm10k_mbx_fifo*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct fm10k_hw*,struct fm10k_mbx_info*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct fm10k_mbx_info*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct fm10k_hw *hw,
				  struct fm10k_mbx_info *mbx, u16 head)
{
	struct fm10k_mbx_fifo *fifo = &mbx->tx;
	/* reduce length by 1 to convert to a mask */
	u16 mbmem_len = mbx->mbmem_len - 1;
	u16 tail_len, len = 0;

	/* push head behind tail */
	if (mbx->tail < head)
		head += mbmem_len;

	FUNC2(hw, mbx, head);

	/* determine msg aligned offset for end of buffer */
	do {
		u32 *msg;

		msg = fifo->buffer + FUNC1(fifo, len);
		tail_len = len;
		len += FUNC0(*msg);
	} while ((len <= mbx->tail_len) && (len < mbmem_len));

	/* guarantee we stop on a message boundary */
	if (mbx->tail_len > tail_len) {
		mbx->tail = FUNC3(mbx, mbx->tail_len - tail_len);
		mbx->tail_len = tail_len;
	}

	/* clear any extra bits left over since index adds 1 extra bit */
	if (mbx->tail > mbmem_len)
		mbx->tail -= mbmem_len;
}