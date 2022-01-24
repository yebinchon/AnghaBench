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
struct niu {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  ifdown ; 
 int /*<<< orphan*/  FUNC0 (struct niu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct niu*) ; 
 int /*<<< orphan*/  FUNC2 (struct niu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct niu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct niu*) ; 
 int /*<<< orphan*/  FUNC5 (struct niu*) ; 
 int /*<<< orphan*/  FUNC6 (struct niu*) ; 
 int /*<<< orphan*/  FUNC7 (struct niu*) ; 

__attribute__((used)) static void FUNC8(struct niu *np)
{
	FUNC0(np, ifdown, KERN_DEBUG, np->dev, "Disable interrupts\n");
	FUNC2(np, 0);

	FUNC0(np, ifdown, KERN_DEBUG, np->dev, "Disable RX MAC\n");
	FUNC3(np, 0);

	FUNC0(np, ifdown, KERN_DEBUG, np->dev, "Disable IPP\n");
	FUNC1(np);

	FUNC0(np, ifdown, KERN_DEBUG, np->dev, "Stop TX channels\n");
	FUNC7(np);

	FUNC0(np, ifdown, KERN_DEBUG, np->dev, "Stop RX channels\n");
	FUNC6(np);

	FUNC0(np, ifdown, KERN_DEBUG, np->dev, "Reset TX channels\n");
	FUNC5(np);

	FUNC0(np, ifdown, KERN_DEBUG, np->dev, "Reset RX channels\n");
	FUNC4(np);
}