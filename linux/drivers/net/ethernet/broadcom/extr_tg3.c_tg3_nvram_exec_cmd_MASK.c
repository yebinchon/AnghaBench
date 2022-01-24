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
typedef  int /*<<< orphan*/  u32 ;
struct tg3 {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  NVRAM_CMD ; 
 int NVRAM_CMD_DONE ; 
 int NVRAM_CMD_TIMEOUT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct tg3 *tp, u32 nvram_cmd)
{
	int i;

	FUNC1(NVRAM_CMD, nvram_cmd);
	for (i = 0; i < NVRAM_CMD_TIMEOUT; i++) {
		FUNC3(10, 40);
		if (FUNC0(NVRAM_CMD) & NVRAM_CMD_DONE) {
			FUNC2(10);
			break;
		}
	}

	if (i == NVRAM_CMD_TIMEOUT)
		return -EBUSY;

	return 0;
}