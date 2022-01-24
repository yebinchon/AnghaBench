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
struct ksz_device {TYPE_1__* dev_ops; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* shutdown ) (struct ksz_device*) ;} ;

/* Variables and functions */
 struct ksz_device* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct ksz_device*) ; 

__attribute__((used)) static void FUNC2(struct i2c_client *i2c)
{
	struct ksz_device *dev = FUNC0(i2c);

	if (dev && dev->dev_ops->shutdown)
		dev->dev_ops->shutdown(dev);
}