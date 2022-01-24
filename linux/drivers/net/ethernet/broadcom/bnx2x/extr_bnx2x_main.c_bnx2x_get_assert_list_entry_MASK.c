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
struct bnx2x {int dummy; } ;
typedef  enum storms { ____Placeholder_storms } storms ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  CSTORM 132 
 int FUNC1 (int) ; 
 int EINVAL ; 
#define  MAX_STORMS 131 
#define  TSTORM 130 
 int FUNC2 (int) ; 
#define  USTORM 129 
 int FUNC3 (int) ; 
#define  XSTORM 128 
 int FUNC4 (int) ; 

__attribute__((used)) static inline int FUNC5(struct bnx2x *bp,
					      enum storms storm,
					      int entry)
{
	switch (storm) {
	case XSTORM:
		return FUNC4(entry);
	case TSTORM:
		return FUNC2(entry);
	case CSTORM:
		return FUNC1(entry);
	case USTORM:
		return FUNC3(entry);
	case MAX_STORMS:
	default:
		FUNC0("unknown storm\n");
	}
	return -EINVAL;
}