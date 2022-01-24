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
struct i2c_client {int dummy; } ;
struct da9055 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct da9055*) ; 
 struct da9055* FUNC1 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *i2c)
{
	struct da9055 *da9055 = FUNC1(i2c);

	FUNC0(da9055);

	return 0;
}