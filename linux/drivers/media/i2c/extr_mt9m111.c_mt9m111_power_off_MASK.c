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
struct mt9m111 {int /*<<< orphan*/  clk; int /*<<< orphan*/  regulator; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mt9m111*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mt9m111 *mt9m111)
{
	FUNC0(mt9m111);
	FUNC1(mt9m111->regulator);
	FUNC2(mt9m111->clk);
}