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
struct cp_private {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  Cmd ; 
 int CmdReset ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4 (struct cp_private *cp)
{
	unsigned work = 1000;

	FUNC1(Cmd, CmdReset);

	while (work--) {
		if (!(FUNC0(Cmd) & CmdReset))
			return;

		FUNC3(10);
	}

	FUNC2(cp->dev, "hardware reset timeout\n");
}