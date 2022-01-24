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
typedef  int /*<<< orphan*/  ef4_dword_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FRF_AA_INT_ACK_KER_FIELD ; 
 int /*<<< orphan*/  FR_AA_INT_ACK_KER ; 
 int /*<<< orphan*/  FR_AA_WORK_AROUND_BROKEN_PCI_READS ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct ef4_nic *efx)
{
	ef4_dword_t reg;

	FUNC0(reg, FRF_AA_INT_ACK_KER_FIELD, 0xb7eb7e);
	FUNC2(efx, &reg, FR_AA_INT_ACK_KER);
	FUNC1(efx, &reg, FR_AA_WORK_AROUND_BROKEN_PCI_READS);
}