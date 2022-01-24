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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct stv {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct stv*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(struct stv *state, u8 mask)
{
	int status = 0;
	u32 lock_retry_count = 10;

	while (lock_retry_count > 0) {
		u8 regval;

		status = FUNC0(state, 9, &regval);
		if (status < 0)
			return status;

		if ((regval & mask) == 0)
			break;
		FUNC1(4000, 6000);
		lock_retry_count -= 1;

		status = -EIO;
	}
	return status;
}