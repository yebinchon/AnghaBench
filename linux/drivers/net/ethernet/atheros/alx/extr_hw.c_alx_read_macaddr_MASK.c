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
typedef  int /*<<< orphan*/  u32 ;
struct alx_hw {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  ALX_STAD0 ; 
 int /*<<< orphan*/  ALX_STAD1 ; 
 int /*<<< orphan*/  FUNC0 (struct alx_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC5(struct alx_hw *hw, u8 *addr)
{
	u32 mac0, mac1;

	mac0 = FUNC0(hw, ALX_STAD0);
	mac1 = FUNC0(hw, ALX_STAD1);

	/* addr should be big-endian */
	FUNC4(FUNC2(mac0), (__be32 *)(addr + 2));
	FUNC4(FUNC1(mac1), (__be16 *)addr);

	return FUNC3(addr);
}