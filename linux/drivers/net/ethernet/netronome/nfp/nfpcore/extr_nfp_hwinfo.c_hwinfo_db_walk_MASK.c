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
typedef  int u32 ;
struct nfp_hwinfo {char* data; } ;
struct nfp_cpp {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_cpp*,char*) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static int
FUNC2(struct nfp_cpp *cpp, struct nfp_hwinfo *hwinfo, u32 size)
{
	const char *key, *val, *end = hwinfo->data + size;

	for (key = hwinfo->data; *key && key < end;
	     key = val + FUNC1(val) + 1) {

		val = key + FUNC1(key) + 1;
		if (val >= end) {
			FUNC0(cpp, "Bad HWINFO - overflowing key\n");
			return -EINVAL;
		}

		if (val + FUNC1(val) + 1 > end) {
			FUNC0(cpp, "Bad HWINFO - overflowing value\n");
			return -EINVAL;
		}
	}

	return 0;
}