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
struct realtek_smi {int /*<<< orphan*/  mdc; int /*<<< orphan*/  mdio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct realtek_smi*) ; 

__attribute__((used)) static void FUNC2(struct realtek_smi *smi, u32 data, u32 len)
{
	for (; len > 0; len--) {
		FUNC1(smi);

		/* Prepare data */
		FUNC0(smi->mdio, !!(data & (1 << (len - 1))));
		FUNC1(smi);

		/* Clocking */
		FUNC0(smi->mdc, 1);
		FUNC1(smi);
		FUNC0(smi->mdc, 0);
	}
}