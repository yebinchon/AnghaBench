#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_3__ {int /*<<< orphan*/  udev; } ;
typedef  TYPE_1__ rtl8150_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  RTL8150_REQT_READ ; 
 int /*<<< orphan*/  RTL8150_REQ_GET_REGS ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(rtl8150_t * dev, u16 indx, u16 size, void *data)
{
	void *buf;
	int ret;

	buf = FUNC1(size, GFP_NOIO);
	if (!buf)
		return -ENOMEM;

	ret = FUNC3(dev->udev, FUNC4(dev->udev, 0),
			      RTL8150_REQ_GET_REGS, RTL8150_REQT_READ,
			      indx, 0, buf, size, 500);
	if (ret > 0 && ret <= size)
		FUNC2(data, buf, ret);
	FUNC0(buf);
	return ret;
}