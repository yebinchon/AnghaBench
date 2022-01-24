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
struct lp8788 {int /*<<< orphan*/  dev; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct lp8788* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct lp8788*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *cl)
{
	struct lp8788 *lp = FUNC0(cl);

	FUNC2(lp->dev);
	FUNC1(lp);
	return 0;
}