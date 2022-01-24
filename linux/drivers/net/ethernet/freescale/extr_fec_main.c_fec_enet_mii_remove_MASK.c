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
struct fec_enet_private {int /*<<< orphan*/  mii_bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ mii_cnt ; 

__attribute__((used)) static void FUNC2(struct fec_enet_private *fep)
{
	if (--mii_cnt == 0) {
		FUNC1(fep->mii_bus);
		FUNC0(fep->mii_bus);
	}
}