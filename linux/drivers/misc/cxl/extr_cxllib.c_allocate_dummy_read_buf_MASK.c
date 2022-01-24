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
typedef  unsigned long long u64 ;

/* Variables and functions */
 unsigned long long CXL_DUMMY_READ_ALIGN ; 
 unsigned long long CXL_DUMMY_READ_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  dummy_read_addr ; 
 scalar_t__ FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static int FUNC3(void)
{
	u64 buf, vaddr;
	size_t buf_size;

	/*
	 * Dummy read buffer is 128-byte long, aligned on a
	 * 256-byte boundary and we need the physical address.
	 */
	buf_size = CXL_DUMMY_READ_SIZE + (1ull << CXL_DUMMY_READ_ALIGN);
	buf = (u64) FUNC1(buf_size, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	vaddr = (buf + (1ull << CXL_DUMMY_READ_ALIGN) - 1) &
					(~0ull << CXL_DUMMY_READ_ALIGN);

	FUNC0((vaddr + CXL_DUMMY_READ_SIZE) > (buf + buf_size),
		"Dummy read buffer alignment issue");
	dummy_read_addr = FUNC2((void *) vaddr);
	return 0;
}