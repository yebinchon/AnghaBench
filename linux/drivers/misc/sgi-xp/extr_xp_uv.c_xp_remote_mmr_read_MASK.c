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
typedef  enum xp_retval { ____Placeholder_xp_retval } xp_retval ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long,unsigned long const,size_t) ; 
 int FUNC3 (unsigned long*,unsigned long const) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long const) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  xp ; 
 int xpGruCopyError ; 
 int xpSuccess ; 

__attribute__((used)) static enum xp_retval
FUNC6(unsigned long dst_gpa, const unsigned long src_gpa,
		   size_t len)
{
	int ret;
	unsigned long *dst_va = FUNC1(FUNC5(dst_gpa));

	FUNC0(!FUNC4(src_gpa));
	FUNC0(len != 8);

	ret = FUNC3(dst_va, src_gpa);
	if (ret == 0)
		return xpSuccess;

	FUNC2(xp, "gru_read_gpa() failed, dst_gpa=0x%016lx src_gpa=0x%016lx "
		"len=%ld\n", dst_gpa, src_gpa, len);
	return xpGruCopyError;
}