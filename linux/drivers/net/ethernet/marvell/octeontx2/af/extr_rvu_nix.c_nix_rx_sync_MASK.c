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
struct rvu {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NIX_AF_RX_SW_SYNC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct rvu*) ; 
 int FUNC3 (struct rvu*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rvu*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(struct rvu *rvu, int blkaddr)
{
	int err;

	/*Sync all in flight RX packets to LLC/DRAM */
	FUNC4(rvu, blkaddr, NIX_AF_RX_SW_SYNC, FUNC0(0));
	err = FUNC3(rvu, blkaddr, NIX_AF_RX_SW_SYNC, FUNC0(0), true);
	if (err)
		FUNC1(rvu->dev, "NIX RX software sync failed\n");

	/* As per a HW errata in 9xxx A0 silicon, HW may clear SW_SYNC[ENA]
	 * bit too early. Hence wait for 50us more.
	 */
	if (FUNC2(rvu))
		FUNC5(50, 60);
}