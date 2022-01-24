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

/* Variables and functions */
 int /*<<< orphan*/  ISL29003_REG_COMMAND ; 
 int /*<<< orphan*/  ISL29003_RES_MASK ; 
 int /*<<< orphan*/  ISL29003_RES_SHIFT ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct i2c_client *client, int res)
{
	return FUNC0(client, ISL29003_REG_COMMAND,
		ISL29003_RES_MASK, ISL29003_RES_SHIFT, res);
}