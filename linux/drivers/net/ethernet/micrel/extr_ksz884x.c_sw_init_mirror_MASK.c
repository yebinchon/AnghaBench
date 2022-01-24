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
struct ksz_hw {int dummy; } ;

/* Variables and functions */
 int TOTAL_PORT_NUM ; 
 int /*<<< orphan*/  FUNC0 (struct ksz_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ksz_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ksz_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ksz_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ksz_hw *hw)
{
	int port;

	for (port = 0; port < TOTAL_PORT_NUM; port++) {
		FUNC1(hw, port, 0);
		FUNC0(hw, port, 0);
		FUNC2(hw, port, 0);
	}
	FUNC3(hw, 0);
}