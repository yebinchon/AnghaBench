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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int EINVAL ; 
 size_t SCU_IPC_RWBUF_LIMIT ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (unsigned short*,int /*<<< orphan*/ *,size_t) ; 

int FUNC2(unsigned short *reg, u8 *buf, size_t count)
{
	if (FUNC0(count > SCU_IPC_RWBUF_LIMIT))
		return -EINVAL;

	return FUNC1(reg, buf, count);
}