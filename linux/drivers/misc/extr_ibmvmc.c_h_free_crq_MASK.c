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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 long H_BUSY ; 
 int /*<<< orphan*/  H_FREE_CRQ ; 
 scalar_t__ FUNC0 (long) ; 
 int /*<<< orphan*/  FUNC1 (long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 long FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(uint32_t unit_address)
{
	long rc = 0;

	do {
		if (FUNC0(rc))
			FUNC2(FUNC1(rc));

		rc = FUNC3(H_FREE_CRQ, unit_address);
	} while ((rc == H_BUSY) || (FUNC0(rc)));
}