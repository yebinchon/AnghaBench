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
struct cas {int dummy; } ;

/* Variables and functions */
 int N_RX_DESC_RINGS ; 
 scalar_t__ FUNC0 (struct cas*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cas*) ; 

__attribute__((used)) static int FUNC2(struct cas *cp)
{
	int i;

	for (i = 0; i < N_RX_DESC_RINGS; i++) {
		if (FUNC0(cp, i) < 0) {
			FUNC1(cp);
			return -1;
		}
	}
	return 0;
}