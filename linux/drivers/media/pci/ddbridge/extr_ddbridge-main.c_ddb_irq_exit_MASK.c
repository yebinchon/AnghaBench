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
struct ddb {int msi; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ddb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ddb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct ddb *dev)
{
	FUNC0(dev);
	if (dev->msi == 2)
		FUNC1(FUNC2(dev->pdev, 1), dev);
	FUNC1(FUNC2(dev->pdev, 0), dev);
}