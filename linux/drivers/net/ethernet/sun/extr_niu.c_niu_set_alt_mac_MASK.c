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
typedef  unsigned char u16 ;
struct niu {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int EINVAL ; 
 int NIU_FLAGS_XMAC ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct niu*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static int FUNC8(struct niu *np, int index, unsigned char *addr)
{
	u16 reg0 = addr[4] << 8 | addr[5];
	u16 reg1 = addr[2] << 8 | addr[3];
	u16 reg2 = addr[0] << 8 | addr[1];

	if (index >= FUNC6(np))
		return -EINVAL;

	if (np->flags & NIU_FLAGS_XMAC) {
		FUNC7(FUNC3(index), reg0);
		FUNC7(FUNC4(index), reg1);
		FUNC7(FUNC5(index), reg2);
	} else {
		FUNC7(FUNC0(index), reg0);
		FUNC7(FUNC1(index), reg1);
		FUNC7(FUNC2(index), reg2);
	}

	return 0;
}