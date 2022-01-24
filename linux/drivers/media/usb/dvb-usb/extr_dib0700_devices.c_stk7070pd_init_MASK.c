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
struct dvb_usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO10 ; 
 int /*<<< orphan*/  GPIO4 ; 
 int /*<<< orphan*/  GPIO6 ; 
 int /*<<< orphan*/  GPIO7 ; 
 int /*<<< orphan*/  GPIO9 ; 
 int /*<<< orphan*/  GPIO_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_usb_device*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct dvb_usb_device *dev)
{
	FUNC1(dev, GPIO6, GPIO_OUT, 1);
	FUNC2(10);
	FUNC1(dev, GPIO9, GPIO_OUT, 1);
	FUNC1(dev, GPIO4, GPIO_OUT, 1);
	FUNC1(dev, GPIO7, GPIO_OUT, 1);
	FUNC1(dev, GPIO10, GPIO_OUT, 0);

	FUNC0(dev, 72, 1);

	FUNC2(10);
	FUNC1(dev, GPIO10, GPIO_OUT, 1);
}