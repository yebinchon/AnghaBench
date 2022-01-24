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
typedef  int /*<<< orphan*/  u16 ;
struct brcms_phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/ * iqlo_loopback_rf_regs ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct brcms_phy *pi, u16 *values_to_save)
{
	int i;

	FUNC0(pi, 0x44c, 0x0 >> 11);

	FUNC0(pi, 0x43b, 0xC);

	for (i = 0; i < 20; i++)
		FUNC1(pi, iqlo_loopback_rf_regs[i],
				values_to_save[i]);
}