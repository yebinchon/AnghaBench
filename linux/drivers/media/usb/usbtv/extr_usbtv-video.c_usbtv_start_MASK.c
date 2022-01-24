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
struct usbtv {struct urb** isoc_urbs; int /*<<< orphan*/  udev; } ;
struct urb {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int USBTV_ISOC_TRANSFERS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usbtv*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbtv*) ; 
 int FUNC4 (struct usbtv*) ; 
 struct urb* FUNC5 (struct usbtv*) ; 
 int /*<<< orphan*/  FUNC6 (struct usbtv*) ; 

__attribute__((used)) static int FUNC7(struct usbtv *usbtv)
{
	int i;
	int ret;

	FUNC3(usbtv);

	ret = FUNC0(usbtv->udev, 0, 0);
	if (ret < 0)
		return ret;

	ret = FUNC4(usbtv);
	if (ret < 0)
		return ret;

	ret = FUNC0(usbtv->udev, 0, 1);
	if (ret < 0)
		return ret;

	FUNC2(usbtv);

	for (i = 0; i < USBTV_ISOC_TRANSFERS; i++) {
		struct urb *ip;

		ip = FUNC5(usbtv);
		if (ip == NULL) {
			ret = -ENOMEM;
			goto start_fail;
		}
		usbtv->isoc_urbs[i] = ip;

		ret = FUNC1(ip, GFP_KERNEL);
		if (ret < 0)
			goto start_fail;
	}

	return 0;

start_fail:
	FUNC6(usbtv);
	return ret;
}