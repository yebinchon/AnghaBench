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
struct realtek_smi {int /*<<< orphan*/  mdc; int /*<<< orphan*/  mdio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct realtek_smi*) ; 

__attribute__((used)) static void FUNC3(struct realtek_smi *smi)
{
	FUNC2(smi);
	FUNC1(smi->mdio, 0);
	FUNC1(smi->mdc, 1);
	FUNC2(smi);
	FUNC1(smi->mdio, 1);
	FUNC2(smi);
	FUNC1(smi->mdc, 1);
	FUNC2(smi);
	FUNC1(smi->mdc, 0);
	FUNC2(smi);
	FUNC1(smi->mdc, 1);

	/* Add a click */
	FUNC2(smi);
	FUNC1(smi->mdc, 0);
	FUNC2(smi);
	FUNC1(smi->mdc, 1);

	/* Set GPIO pins to input mode */
	FUNC0(smi->mdio);
	FUNC0(smi->mdc);
}