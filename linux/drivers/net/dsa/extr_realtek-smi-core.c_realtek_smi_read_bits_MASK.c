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
typedef  scalar_t__ u32 ;
struct realtek_smi {int /*<<< orphan*/  mdio; int /*<<< orphan*/  mdc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct realtek_smi*) ; 

__attribute__((used)) static void FUNC5(struct realtek_smi *smi, u32 len, u32 *data)
{
	FUNC0(smi->mdio);

	for (*data = 0; len > 0; len--) {
		u32 u;

		FUNC4(smi);

		/* Clocking */
		FUNC3(smi->mdc, 1);
		FUNC4(smi);
		u = !!FUNC2(smi->mdio);
		FUNC3(smi->mdc, 0);

		*data |= (u << (len - 1));
	}

	FUNC1(smi->mdio, 0);
}