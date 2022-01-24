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
struct tg3 {int /*<<< orphan*/  dev; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC3 (struct tg3*) ; 

__attribute__((used)) static int FUNC4(struct tg3 *tp)
{
	int err;

	FUNC2(tp);

	err = FUNC1(tp->pdev, PCI_D0);
	if (!err) {
		/* Switch out of Vaux if it is a NIC */
		FUNC3(tp);
	} else {
		FUNC0(tp->dev, "Transition to D0 failed\n");
	}

	return err;
}