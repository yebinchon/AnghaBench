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
struct pnp_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pnp_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pnp_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct pnp_dev *pdev)
{
	FUNC0(FUNC1(pdev));
	FUNC2(pdev, NULL);
}