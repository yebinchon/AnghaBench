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

/* Variables and functions */
 int /*<<< orphan*/  N_CAIF ; 
 int /*<<< orphan*/  caif_ldisc ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(void)
{
	int result;

	result = FUNC1(N_CAIF, &caif_ldisc);
	if (result < 0) {
		FUNC0("cannot register CAIF ldisc=%d err=%d\n", N_CAIF,
			result);
		return result;
	}
	return result;
}