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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int EINVAL ; 
 int ERANGE ; 
 int /*<<< orphan*/  PACK ; 
 int /*<<< orphan*/  QUIRK_LSW32_IS_FIRST ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (void*,int /*<<< orphan*/ *,int,int,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,...) ; 

void FUNC4(void *buf, const u64 *val, int start, int end, size_t len)
{
	int rc = FUNC2(buf, (u64 *)val, start, end, len,
			 PACK, QUIRK_LSW32_IS_FIRST);

	if (FUNC1(!rc))
		return;

	if (rc == -EINVAL) {
		FUNC3("Start bit (%d) expected to be larger than end (%d)\n",
		       start, end);
	} else if (rc == -ERANGE) {
		if ((start - end + 1) > 64)
			FUNC3("Field %d-%d too large for 64 bits!\n",
			       start, end);
		else
			FUNC3("Cannot store %llx inside bits %d-%d (would truncate)\n",
			       *val, start, end);
	}
	FUNC0();
}