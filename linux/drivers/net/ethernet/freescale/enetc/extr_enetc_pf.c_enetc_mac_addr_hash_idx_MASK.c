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
typedef  int u64 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(const u8 *addr)
{
	u64 fold = FUNC1(FUNC2(addr)) >> 16;
	u64 mask = 0;
	int res = 0;
	int i;

	for (i = 0; i < 8; i++)
		mask |= FUNC0(i * 6);

	for (i = 0; i < 6; i++)
		res |= (FUNC3(fold & (mask << i)) & 0x1) << i;

	return res;
}