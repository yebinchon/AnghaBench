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
struct carl9170_sta_tid {int bsn; scalar_t__ snx; int /*<<< orphan*/  bitmap; } ;
struct ar9170 {int dummy; } ;

/* Variables and functions */
 scalar_t__ CARL9170_BAW_BITS ; 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ar9170 *ar,
	struct carl9170_sta_tid *tid_info, u16 seq)
{
	u16 off;

	off = FUNC0(seq, tid_info->bsn);

	if (FUNC1(off >= CARL9170_BAW_BITS))
		return;

	/*
	 * Sanity check. For each MPDU we set the bit in bitmap and
	 * clear it once we received the tx_status.
	 * But if the bit is already cleared then we've been bitten
	 * by a bug.
	 */
	FUNC1(!FUNC5(off, tid_info->bitmap));

	off = FUNC0(tid_info->snx, tid_info->bsn);
	if (FUNC1(off >= CARL9170_BAW_BITS))
		return;

	if (!FUNC2(tid_info->bitmap, off))
		off = FUNC4(tid_info->bitmap, off);

	tid_info->bsn += off;
	tid_info->bsn &= 0x0fff;

	FUNC3(tid_info->bitmap, tid_info->bitmap,
			   off, CARL9170_BAW_BITS);
}