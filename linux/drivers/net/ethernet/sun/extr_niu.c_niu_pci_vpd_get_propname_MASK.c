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
typedef  scalar_t__ u32 ;
struct niu {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct niu*,scalar_t__) ; 

__attribute__((used)) static int FUNC1(struct niu *np, u32 off, char *namebuf,
				    int namebuf_len)
{
	int i;

	for (i = 0; i < namebuf_len; i++) {
		int err = FUNC0(np, off + i);
		if (err < 0)
			return err;
		*namebuf++ = err;
		if (!err)
			break;
	}
	if (i >= namebuf_len)
		return -EINVAL;

	return i + 1;
}