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
typedef  scalar_t__ u64 ;
struct niu {int /*<<< orphan*/  dev; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZCP_RAM_ACC ; 
 int /*<<< orphan*/  ZCP_RAM_ACC_BUSY ; 
 int ZCP_RAM_ACC_RAM_SEL_SHIFT ; 
 int ZCP_RAM_ACC_READ ; 
 int ZCP_RAM_ACC_ZFCID_SHIFT ; 
 int /*<<< orphan*/  ZCP_RAM_DATA0 ; 
 int /*<<< orphan*/  ZCP_RAM_DATA1 ; 
 int /*<<< orphan*/  ZCP_RAM_DATA2 ; 
 int /*<<< orphan*/  ZCP_RAM_DATA3 ; 
 int /*<<< orphan*/  ZCP_RAM_DATA4 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int FUNC2 (struct niu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct niu *np, int index, u64 *data)
{
	int err;

	err = FUNC2(np, ZCP_RAM_ACC, ZCP_RAM_ACC_BUSY,
				  1000, 100);
	if (err) {
		FUNC1(np->dev, "ZCP read busy won't clear, ZCP_RAM_ACC[%llx]\n",
			   (unsigned long long)FUNC3(ZCP_RAM_ACC));
		return err;
	}

	FUNC4(ZCP_RAM_ACC,
	     (ZCP_RAM_ACC_READ |
	      (0 << ZCP_RAM_ACC_ZFCID_SHIFT) |
	      (FUNC0(np->port) << ZCP_RAM_ACC_RAM_SEL_SHIFT)));

	err = FUNC2(np, ZCP_RAM_ACC, ZCP_RAM_ACC_BUSY,
				  1000, 100);
	if (err) {
		FUNC1(np->dev, "ZCP read busy2 won't clear, ZCP_RAM_ACC[%llx]\n",
			   (unsigned long long)FUNC3(ZCP_RAM_ACC));
		return err;
	}

	data[0] = FUNC3(ZCP_RAM_DATA0);
	data[1] = FUNC3(ZCP_RAM_DATA1);
	data[2] = FUNC3(ZCP_RAM_DATA2);
	data[3] = FUNC3(ZCP_RAM_DATA3);
	data[4] = FUNC3(ZCP_RAM_DATA4);

	return 0;
}