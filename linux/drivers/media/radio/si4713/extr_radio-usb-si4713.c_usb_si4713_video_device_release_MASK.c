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
struct v4l2_device {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct si4713_usb_device {struct si4713_usb_device* buffer; int /*<<< orphan*/  v4l2_dev; struct i2c_adapter i2c_adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct si4713_usb_device*) ; 
 struct si4713_usb_device* FUNC2 (struct v4l2_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct v4l2_device *v4l2_dev)
{
	struct si4713_usb_device *radio = FUNC2(v4l2_dev);
	struct i2c_adapter *adapter = &radio->i2c_adapter;

	FUNC0(adapter);
	FUNC3(&radio->v4l2_dev);
	FUNC1(radio->buffer);
	FUNC1(radio);
}