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
struct TYPE_2__ {scalar_t__ qlen; } ;
struct usbnet {TYPE_1__ rxq; } ;
struct urb {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct usbnet*) ; 
 int FUNC1 (struct usbnet*,struct urb*,int /*<<< orphan*/ ) ; 
 struct urb* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct usbnet *dev, gfp_t flags)
{
	struct urb	*urb;
	int		i;
	int		ret = 0;

	/* don't refill the queue all at once */
	for (i = 0; i < 10 && dev->rxq.qlen < FUNC0(dev); i++) {
		urb = FUNC2(0, flags);
		if (urb != NULL) {
			ret = FUNC1(dev, urb, flags);
			if (ret)
				goto err;
		} else {
			ret = -ENOMEM;
			goto err;
		}
	}
err:
	return ret;
}