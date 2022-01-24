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
struct fm10k_mbx_info {int /*<<< orphan*/  local; int /*<<< orphan*/  tx; int /*<<< orphan*/  pulled; int /*<<< orphan*/  tail; scalar_t__ tail_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct fm10k_mbx_info*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct fm10k_mbx_info *mbx, u16 head)
{
	u16 len = mbx->tail_len - FUNC2(mbx, head, mbx->tail);

	/* determine the offset for the start of the region to be pulled */
	head = FUNC1(&mbx->tx, mbx->pulled);

	/* update local CRC to include all of the pulled data */
	mbx->local = FUNC0(&mbx->tx, head, len, mbx->local);
}