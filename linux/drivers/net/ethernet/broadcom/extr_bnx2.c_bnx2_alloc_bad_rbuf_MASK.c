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
typedef  int u16 ;
struct bnx2 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2_MISC_ENABLE_SET_BITS ; 
 int /*<<< orphan*/  BNX2_MISC_ENABLE_SET_BITS_RX_MBUF_ENABLE ; 
 int /*<<< orphan*/  BNX2_RBUF_COMMAND ; 
 int BNX2_RBUF_COMMAND_ALLOC_REQ ; 
 int /*<<< orphan*/  BNX2_RBUF_FW_BUF_ALLOC ; 
 int BNX2_RBUF_FW_BUF_ALLOC_VALUE ; 
 int /*<<< orphan*/  BNX2_RBUF_FW_BUF_FREE ; 
 int /*<<< orphan*/  BNX2_RBUF_STATUS1 ; 
 int BNX2_RBUF_STATUS1_FREE_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int* FUNC4 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct bnx2 *bp)
{
	u16 *good_mbuf;
	u32 good_mbuf_cnt;
	u32 val;

	good_mbuf = FUNC4(512, sizeof(u16), GFP_KERNEL);
	if (!good_mbuf)
		return -ENOMEM;

	FUNC0(bp, BNX2_MISC_ENABLE_SET_BITS,
		BNX2_MISC_ENABLE_SET_BITS_RX_MBUF_ENABLE);

	good_mbuf_cnt = 0;

	/* Allocate a bunch of mbufs and save the good ones in an array. */
	val = FUNC1(bp, BNX2_RBUF_STATUS1);
	while (val & BNX2_RBUF_STATUS1_FREE_COUNT) {
		FUNC2(bp, BNX2_RBUF_COMMAND,
				BNX2_RBUF_COMMAND_ALLOC_REQ);

		val = FUNC1(bp, BNX2_RBUF_FW_BUF_ALLOC);

		val &= BNX2_RBUF_FW_BUF_ALLOC_VALUE;

		/* The addresses with Bit 9 set are bad memory blocks. */
		if (!(val & (1 << 9))) {
			good_mbuf[good_mbuf_cnt] = (u16) val;
			good_mbuf_cnt++;
		}

		val = FUNC1(bp, BNX2_RBUF_STATUS1);
	}

	/* Free the good ones back to the mbuf pool thus discarding
	 * all the bad ones. */
	while (good_mbuf_cnt) {
		good_mbuf_cnt--;

		val = good_mbuf[good_mbuf_cnt];
		val = (val << 9) | val | 1;

		FUNC2(bp, BNX2_RBUF_FW_BUF_FREE, val);
	}
	FUNC3(good_mbuf);
	return 0;
}