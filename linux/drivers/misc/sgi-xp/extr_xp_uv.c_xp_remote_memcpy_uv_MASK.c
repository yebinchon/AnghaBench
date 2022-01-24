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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long,unsigned long const,size_t) ; 
 int FUNC1 (unsigned long,unsigned long const,size_t) ; 
 scalar_t__ FUNC2 (unsigned long const) ; 
 int /*<<< orphan*/  xp ; 
 int xpGruCopyError ; 
 int xpSuccess ; 
 int FUNC3 (unsigned long,unsigned long const,size_t) ; 

__attribute__((used)) static enum xp_retval
FUNC4(unsigned long dst_gpa, const unsigned long src_gpa,
		    size_t len)
{
	int ret;

	if (FUNC2(src_gpa))
		return FUNC3(dst_gpa, src_gpa, len);

	ret = FUNC1(dst_gpa, src_gpa, len);
	if (ret == 0)
		return xpSuccess;

	FUNC0(xp, "gru_copy_gpa() failed, dst_gpa=0x%016lx src_gpa=0x%016lx "
		"len=%ld\n", dst_gpa, src_gpa, len);
	return xpGruCopyError;
}