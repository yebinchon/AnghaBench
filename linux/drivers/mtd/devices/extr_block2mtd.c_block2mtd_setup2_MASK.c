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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 unsigned long MTD_DEFAULT_TIMEOUT ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (size_t*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int FUNC5 (char*) ; 
 int FUNC6 (char const*,int) ; 
 char* FUNC7 (char**,char*) ; 

__attribute__((used)) static int FUNC8(const char *val)
{
	/* 80 for device, 12 for erase size, 80 for name, 8 for timeout */
	char buf[80 + 12 + 80 + 8];
	char *str = buf;
	char *token[2];
	char *name;
	size_t erase_size = PAGE_SIZE;
	unsigned long timeout = MTD_DEFAULT_TIMEOUT;
	int i, ret;

	if (FUNC6(val, sizeof(buf)) >= sizeof(buf)) {
		FUNC3("parameter too long\n");
		return 0;
	}

	FUNC4(str, val);
	FUNC1(str);

	for (i = 0; i < 2; i++)
		token[i] = FUNC7(&str, ",");

	if (str) {
		FUNC3("too many arguments\n");
		return 0;
	}

	if (!token[0]) {
		FUNC3("no argument\n");
		return 0;
	}

	name = token[0];
	if (FUNC5(name) + 1 > 80) {
		FUNC3("device name too long\n");
		return 0;
	}

	if (token[1]) {
		ret = FUNC2(&erase_size, token[1]);
		if (ret) {
			FUNC3("illegal erase size\n");
			return 0;
		}
	}

	FUNC0(name, erase_size, timeout);

	return 0;
}