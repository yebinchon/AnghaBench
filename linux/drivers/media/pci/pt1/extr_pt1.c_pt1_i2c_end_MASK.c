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
struct pt1 {int dummy; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (struct pt1*,int,int,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC1 (struct pt1*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pt1*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct pt1 *pt1, int addr)
{
	FUNC0(pt1, addr,     1, 0, 0, 0, addr + 1);
	FUNC0(pt1, addr + 1, 1, 0, 1, 0, addr + 2);
	FUNC0(pt1, addr + 2, 1, 0, 1, 1, 0);

	FUNC2(pt1, 0, 0x00000004);
	do {
		if (FUNC3(current))
			return -EINTR;
		FUNC4(1000, 2000);
	} while (FUNC1(pt1, 0) & 0x00000080);
	return 0;
}