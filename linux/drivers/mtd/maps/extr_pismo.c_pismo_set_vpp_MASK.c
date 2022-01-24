#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pismo_data {int /*<<< orphan*/  vpp_data; int /*<<< orphan*/  (* vpp ) (int /*<<< orphan*/ ,int) ;} ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct pismo_data* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct platform_device *pdev, int on)
{
	struct i2c_client *client = FUNC2(pdev->dev.parent);
	struct pismo_data *pismo = FUNC0(client);

	pismo->vpp(pismo->vpp_data, on);
}