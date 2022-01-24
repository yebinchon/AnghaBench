#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct lis3lv02d_platform_data {int /*<<< orphan*/  (* release_resources ) () ;} ;
struct lis3lv02d {int /*<<< orphan*/  regulators; } ;
struct TYPE_4__ {struct lis3lv02d_platform_data* platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  regulators; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct lis3lv02d* FUNC1 (struct i2c_client*) ; 
 TYPE_2__ lis3_dev ; 
 int /*<<< orphan*/  FUNC2 (struct lis3lv02d*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct lis3lv02d *lis3 = FUNC1(client);
	struct lis3lv02d_platform_data *pdata = client->dev.platform_data;

	if (pdata && pdata->release_resources)
		pdata->release_resources();

	FUNC2(lis3);
	FUNC3(&lis3_dev);

	FUNC4(FUNC0(lis3->regulators),
			    lis3_dev.regulators);
	return 0;
}