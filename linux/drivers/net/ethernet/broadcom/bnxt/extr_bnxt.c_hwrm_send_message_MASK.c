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
struct bnxt {int /*<<< orphan*/  hwrm_cmd_lock; } ;

/* Variables and functions */
 int FUNC0 (struct bnxt*,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct bnxt *bp, void *msg, u32 msg_len, int timeout)
{
	int rc;

	FUNC1(&bp->hwrm_cmd_lock);
	rc = FUNC0(bp, msg, msg_len, timeout);
	FUNC2(&bp->hwrm_cmd_lock);
	return rc;
}