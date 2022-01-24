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
typedef  int /*<<< orphan*/  u16 ;
struct i2c_client {int dummy; } ;
struct dw9714_device {int /*<<< orphan*/  current_val; int /*<<< orphan*/  sd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW9714_DEFAULT_S ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct dw9714_device *dw9714_dev, u16 val)
{
	struct i2c_client *client = FUNC2(&dw9714_dev->sd);

	dw9714_dev->current_val = val;

	return FUNC1(client, FUNC0(val, DW9714_DEFAULT_S));
}