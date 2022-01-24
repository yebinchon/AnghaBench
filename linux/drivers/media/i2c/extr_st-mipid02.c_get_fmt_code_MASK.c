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
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__*) ; 
 scalar_t__* mipid02_supported_fmt_codes ; 

__attribute__((used)) static __u32 FUNC1(__u32 code)
{
	unsigned int i;

	for (i = 0; i < FUNC0(mipid02_supported_fmt_codes); i++) {
		if (code == mipid02_supported_fmt_codes[i])
			return code;
	}

	return mipid02_supported_fmt_codes[0];
}