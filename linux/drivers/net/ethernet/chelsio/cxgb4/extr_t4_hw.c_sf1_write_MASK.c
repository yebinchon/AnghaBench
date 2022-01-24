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
struct adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int EBUSY ; 
 int EINVAL ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  SF_ATTEMPTS ; 
 int SF_BUSY_F ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  SF_DATA_A ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  SF_OP_A ; 
 int FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct adapter*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct adapter *adapter, unsigned int byte_cnt, int cont,
		     int lock, u32 val)
{
	if (!byte_cnt || byte_cnt > 4)
		return -EINVAL;
	if (FUNC4(adapter, SF_OP_A) & SF_BUSY_F)
		return -EBUSY;
	FUNC6(adapter, SF_DATA_A, val);
	FUNC6(adapter, SF_OP_A, FUNC3(lock) |
		     FUNC2(cont) | FUNC0(byte_cnt - 1) | FUNC1(1));
	return FUNC5(adapter, SF_OP_A, SF_BUSY_F, 0, SF_ATTEMPTS, 5);
}