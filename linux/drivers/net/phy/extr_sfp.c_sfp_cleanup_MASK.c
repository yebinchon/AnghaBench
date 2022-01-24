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
struct sfp {scalar_t__ i2c; scalar_t__ i2c_mii; int /*<<< orphan*/  timeout; int /*<<< orphan*/  poll; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sfp*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(void *data)
{
	struct sfp *sfp = data;

	FUNC0(&sfp->poll);
	FUNC0(&sfp->timeout);
	if (sfp->i2c_mii) {
		FUNC4(sfp->i2c_mii);
		FUNC3(sfp->i2c_mii);
	}
	if (sfp->i2c)
		FUNC1(sfp->i2c);
	FUNC2(sfp);
}