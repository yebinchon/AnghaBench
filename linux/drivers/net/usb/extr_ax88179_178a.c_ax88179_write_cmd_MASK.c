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
typedef  int u16 ;
struct usbnet {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int,int,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 

__attribute__((used)) static int FUNC2(struct usbnet *dev, u8 cmd, u16 value, u16 index,
			     u16 size, void *data)
{
	int ret;

	if (2 == size) {
		u16 buf;
		buf = *((u16 *)data);
		FUNC1(&buf);
		ret = FUNC0(dev, cmd, value, index,
					  size, &buf, 0);
	} else {
		ret = FUNC0(dev, cmd, value, index,
					  size, data, 0);
	}

	return ret;
}