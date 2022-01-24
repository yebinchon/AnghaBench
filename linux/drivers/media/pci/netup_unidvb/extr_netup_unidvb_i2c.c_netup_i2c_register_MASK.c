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
struct netup_unidvb_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct netup_unidvb_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct netup_unidvb_dev*,int /*<<< orphan*/ ) ; 

int FUNC2(struct netup_unidvb_dev *ndev)
{
	int ret;

	ret = FUNC0(ndev, 0);
	if (ret)
		return ret;
	ret = FUNC0(ndev, 1);
	if (ret) {
		FUNC1(ndev, 0);
		return ret;
	}
	return 0;
}