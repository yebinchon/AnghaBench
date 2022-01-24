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
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bnx2x*) ; 
 scalar_t__ BNX2X_VF_CIDS ; 
 scalar_t__ CNIC_CID_MAX ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  QM_CID_ROUND ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct bnx2x *bp)
{
	int cid_count = FUNC0(bp);

	if (FUNC2(bp))
		cid_count += BNX2X_VF_CIDS;

	if (FUNC1(bp))
		cid_count += CNIC_CID_MAX;

	return FUNC3(cid_count, QM_CID_ROUND);
}