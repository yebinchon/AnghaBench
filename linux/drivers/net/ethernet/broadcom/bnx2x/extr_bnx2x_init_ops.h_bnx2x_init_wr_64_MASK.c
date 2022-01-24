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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int FW_BUF_SIZE ; 
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (int const,int const) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int,int) ; 
 int FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct bnx2x *bp, u32 addr,
			     const u32 *data, u32 len64)
{
	u32 buf_len32 = FW_BUF_SIZE/4;
	u32 len = len64*2;
	u64 data64 = 0;
	u32 i;

	/* 64 bit value is in a blob: first low DWORD, then high DWORD */
	data64 = FUNC1((*(data + 1)), (*data));

	len64 = FUNC3((u32)(FW_BUF_SIZE/8), len64);
	for (i = 0; i < len64; i++) {
		u64 *pdata = ((u64 *)(FUNC0(bp))) + i;

		*pdata = data64;
	}

	for (i = 0; i < len; i += buf_len32) {
		u32 cur_len = FUNC3(buf_len32, len - i);

		FUNC2(bp, addr + i*4, cur_len);
	}
}