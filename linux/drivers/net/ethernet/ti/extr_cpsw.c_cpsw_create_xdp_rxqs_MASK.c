#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_3__ {int slaves; } ;
struct cpsw_common {int rx_ch_num; TYPE_2__* slaves; TYPE_1__ data; } ;
struct TYPE_4__ {struct net_device* ndev; } ;

/* Variables and functions */
 int FUNC0 (struct cpsw_common*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cpsw_common*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

int FUNC4(struct cpsw_common *cpsw)
{
	struct net_device *ndev;
	int i, ch, ret;

	for (ch = 0; ch < cpsw->rx_ch_num; ch++) {
		ret = FUNC0(cpsw, ch);
		if (ret)
			goto err_cleanup;

		/* using same page pool is allowed as no running rx handlers
		 * simultaneously for both ndevs
		 */
		for (i = 0; i < cpsw->data.slaves; i++) {
			ndev = cpsw->slaves[i].ndev;
			if (!ndev)
				continue;

			ret = FUNC2(FUNC3(ndev), ch);
			if (ret)
				goto err_cleanup;
		}
	}

	return 0;

err_cleanup:
	FUNC1(cpsw);

	return ret;
}