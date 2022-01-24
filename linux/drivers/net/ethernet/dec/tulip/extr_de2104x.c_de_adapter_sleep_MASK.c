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
struct de_private {int /*<<< orphan*/  pdev; scalar_t__ de21040; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR13 ; 
 int /*<<< orphan*/  PCIPM ; 
 int /*<<< orphan*/  PM_Sleep ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3 (struct de_private *de)
{
	u32 pmctl;

	if (de->de21040)
		return;

	FUNC0(CSR13, 0); /* Reset phy */
	FUNC1(de->pdev, PCIPM, &pmctl);
	pmctl |= PM_Sleep;
	FUNC2(de->pdev, PCIPM, pmctl);
}