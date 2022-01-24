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
struct TYPE_2__ {scalar_t__ link_ok; } ;
struct port_info {TYPE_1__ link_cfg; int /*<<< orphan*/  port_id; int /*<<< orphan*/  viid; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct adapter*,unsigned int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct adapter *adap, unsigned int mbox,
			struct port_info *pi,
			bool rx_en, bool tx_en, bool dcb_en)
{
	int ret = FUNC0(adap, mbox, pi->viid,
				      rx_en, tx_en, dcb_en);
	if (ret)
		return ret;
	FUNC1(adap, pi->port_id,
			   rx_en && tx_en && pi->link_cfg.link_ok);
	return 0;
}