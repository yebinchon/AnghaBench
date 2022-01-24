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
struct ef4_nic {int dummy; } ;
typedef  int /*<<< orphan*/  ef4_oword_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FRF_AB_GPIO3_OEN ; 
 int /*<<< orphan*/  FR_AB_GPIO_CTL ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *data, int state)
{
	struct ef4_nic *efx = (struct ef4_nic *)data;
	ef4_oword_t reg;

	FUNC1(efx, &reg, FR_AB_GPIO_CTL);
	FUNC0(reg, FRF_AB_GPIO3_OEN, !state);
	FUNC2(efx, &reg, FR_AB_GPIO_CTL);
}