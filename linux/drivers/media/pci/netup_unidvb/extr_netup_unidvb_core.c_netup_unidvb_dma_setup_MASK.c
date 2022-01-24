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
struct netup_unidvb_dev {int /*<<< orphan*/ * dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct netup_unidvb_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct netup_unidvb_dev*,int) ; 

__attribute__((used)) static int FUNC3(struct netup_unidvb_dev *ndev)
{
	int res;

	res = FUNC2(ndev, 0);
	if (res)
		return res;
	res = FUNC2(ndev, 1);
	if (res) {
		FUNC1(ndev, 0);
		return res;
	}
	FUNC0(&ndev->dma[0], 0);
	FUNC0(&ndev->dma[1], 0);
	return 0;
}