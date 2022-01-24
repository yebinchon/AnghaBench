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
typedef  scalar_t__ u16 ;
struct fm10k_mbx_fifo {int /*<<< orphan*/  tail; } ;
struct fm10k_mbx_info {scalar_t__ pushed; int /*<<< orphan*/  rx_dwords; int /*<<< orphan*/  rx_messages; scalar_t__ head_len; int /*<<< orphan*/  head; struct fm10k_mbx_fifo rx; } ;
struct fm10k_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FM10K_MBX_ERR_SIZE ; 
 scalar_t__ FUNC0 (struct fm10k_mbx_fifo*) ; 
 int /*<<< orphan*/  FUNC1 (struct fm10k_mbx_info*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct fm10k_mbx_info*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (struct fm10k_mbx_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct fm10k_hw*,struct fm10k_mbx_info*) ; 
 scalar_t__ FUNC5 (struct fm10k_mbx_info*,scalar_t__) ; 

__attribute__((used)) static s32 FUNC6(struct fm10k_hw *hw,
			       struct fm10k_mbx_info *mbx,
			       u16 tail)
{
	struct fm10k_mbx_fifo *fifo = &mbx->rx;
	u16 len, seq = FUNC2(mbx, mbx->head, tail);

	/* determine length of data to push */
	len = FUNC0(fifo) - mbx->pushed;
	if (len > seq)
		len = seq;

	/* update head and record bytes received */
	mbx->head = FUNC1(mbx, len);
	mbx->head_len = len;

	/* nothing to do if there is no data */
	if (!len)
		return 0;

	/* Copy msg into Rx FIFO */
	FUNC4(hw, mbx);

	/* determine if there are any invalid lengths in message */
	if (FUNC5(mbx, len))
		return FM10K_MBX_ERR_SIZE;

	/* Update pushed */
	mbx->pushed += len;

	/* flush any completed messages */
	for (len = FUNC3(mbx);
	     len && (mbx->pushed >= len);
	     len = FUNC3(mbx)) {
		fifo->tail += len;
		mbx->pushed -= len;
		mbx->rx_messages++;
		mbx->rx_dwords += len;
	}

	return 0;
}