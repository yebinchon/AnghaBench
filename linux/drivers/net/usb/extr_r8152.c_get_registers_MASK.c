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
struct r8152 {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RTL8152_REQT_READ ; 
 int /*<<< orphan*/  RTL8152_REQ_GET_REGS ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int FUNC6(struct r8152 *tp, u16 value, u16 index, u16 size, void *data)
{
	int ret;
	void *tmp;

	tmp = FUNC1(size, GFP_KERNEL);
	if (!tmp)
		return -ENOMEM;

	ret = FUNC4(tp->udev, FUNC5(tp->udev, 0),
			      RTL8152_REQ_GET_REGS, RTL8152_REQT_READ,
			      value, index, tmp, size, 500);
	if (ret < 0)
		FUNC3(data, 0xff, size);
	else
		FUNC2(data, tmp, size);

	FUNC0(tmp);

	return ret;
}