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
struct nfp_hwinfo {char* data; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 int FUNC2 (char const*) ; 

const char *FUNC3(struct nfp_hwinfo *hwinfo, const char *lookup)
{
	const char *key, *val, *end;

	if (!hwinfo || !lookup)
		return NULL;

	end = hwinfo->data + FUNC0(hwinfo->size) - sizeof(u32);

	for (key = hwinfo->data; *key && key < end;
	     key = val + FUNC2(val) + 1) {

		val = key + FUNC2(key) + 1;

		if (FUNC1(key, lookup) == 0)
			return val;
	}

	return NULL;
}