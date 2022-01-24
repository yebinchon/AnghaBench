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
struct bnx2x {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCICFG_GRC_ADDRESS ; 
 int /*<<< orphan*/  PCICFG_GRC_DATA ; 
 int /*<<< orphan*/  PCICFG_VENDOR_ID_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC2(struct bnx2x *bp, u32 addr)
{
	u32 val;

	FUNC1(bp->pdev, PCICFG_GRC_ADDRESS, addr);
	FUNC0(bp->pdev, PCICFG_GRC_DATA, &val);
	FUNC1(bp->pdev, PCICFG_GRC_ADDRESS,
			       PCICFG_VENDOR_ID_OFFSET);

	return val;
}