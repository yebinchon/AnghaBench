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
typedef  int u16 ;
struct bnxt {int flags; scalar_t__ wol; } ;

/* Variables and functions */
 int BNXT_FLAG_WOL_CAP ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt*) ; 
 int FUNC1 (struct bnxt*,int) ; 

__attribute__((used)) static void FUNC2(struct bnxt *bp)
{
	u16 handle = 0;

	bp->wol = 0;
	if (!FUNC0(bp) || !(bp->flags & BNXT_FLAG_WOL_CAP))
		return;

	do {
		handle = FUNC1(bp, handle);
	} while (handle && handle != 0xffff);
}