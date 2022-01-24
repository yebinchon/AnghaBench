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
 int EINVAL ; 
 unsigned long INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 unsigned long FUNC1 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const char *str)
{
	char *endp;
	unsigned long result;

	result = FUNC1(str, &endp, 0);
	if (str == endp || result >= INT_MAX) {
		FUNC0("UBI error: incorrect bytes count: \"%s\"\n", str);
		return -EINVAL;
	}

	switch (*endp) {
	case 'G':
		result *= 1024;
		/* fall through */
	case 'M':
		result *= 1024;
		/* fall through */
	case 'K':
		result *= 1024;
		if (endp[1] == 'i' && endp[2] == 'B')
			endp += 2;
	case '\0':
		break;
	default:
		FUNC0("UBI error: incorrect bytes count: \"%s\"\n", str);
		return -EINVAL;
	}

	return result;
}