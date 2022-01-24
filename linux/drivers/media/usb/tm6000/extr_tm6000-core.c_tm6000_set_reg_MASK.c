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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct tm6000_core {int dummy; } ;

/* Variables and functions */
 int USB_DIR_OUT ; 
 int USB_TYPE_VENDOR ; 
 int FUNC0 (struct tm6000_core*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC1(struct tm6000_core *dev, u8 req, u16 value, u16 index)
{
	return
		FUNC0(dev, USB_DIR_OUT | USB_TYPE_VENDOR,
				      req, value, index, NULL, 0);
}