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
typedef  int /*<<< orphan*/  u16 ;
struct fm10k_mbx_fifo {int dummy; } ;
struct fm10k_mbx_info {int mbx_hdr; int /*<<< orphan*/  local; int /*<<< orphan*/  tail_len; int /*<<< orphan*/  pulled; int /*<<< orphan*/  mbx_lock; struct fm10k_mbx_fifo tx; int /*<<< orphan*/  head; int /*<<< orphan*/  tail; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRC ; 
 int /*<<< orphan*/  FM10K_MBX_REQ ; 
 int /*<<< orphan*/  FM10K_MSG_DATA ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HEAD ; 
 int /*<<< orphan*/  TAIL ; 
 int /*<<< orphan*/  TYPE ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fm10k_mbx_fifo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fm10k_mbx_fifo*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct fm10k_mbx_info *mbx)
{
	u32 hdr = FUNC0(FM10K_MSG_DATA, TYPE) |
		  FUNC0(mbx->tail, TAIL) |
		  FUNC0(mbx->head, HEAD);
	struct fm10k_mbx_fifo *fifo = &mbx->tx;
	u16 crc;

	if (mbx->tail_len)
		mbx->mbx_lock |= FM10K_MBX_REQ;

	/* generate CRC for data in flight and header */
	crc = FUNC2(fifo, FUNC3(fifo, mbx->pulled),
			     mbx->tail_len, mbx->local);
	crc = FUNC1(&hdr, crc, 1);

	/* load header to memory to be written */
	mbx->mbx_hdr = hdr | FUNC0(crc, CRC);
}