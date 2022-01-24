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
struct port_info {struct adapter* adapter; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int cclk; } ;
struct TYPE_4__ {TYPE_1__ vpd; } ;
struct adapter {TYPE_2__ params; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_TP_TM_PIO_ADDR ; 
 int /*<<< orphan*/  A_TP_TM_PIO_DATA ; 
 int A_TP_TX_MOD_Q1_Q0_RATE_LIMIT ; 
 struct port_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 unsigned int FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *d,
			    char *buf, int sched)
{
	struct port_info *pi = FUNC0(FUNC6(d));
	struct adapter *adap = pi->adapter;
	unsigned int v, addr, bpt, cpt;
	ssize_t len;

	addr = A_TP_TX_MOD_Q1_Q0_RATE_LIMIT - sched / 2;
	FUNC1();
	FUNC5(adap, A_TP_TM_PIO_ADDR, addr);
	v = FUNC4(adap, A_TP_TM_PIO_DATA);
	if (sched & 1)
		v >>= 16;
	bpt = (v >> 8) & 0xff;
	cpt = v & 0xff;
	if (!cpt)
		len = FUNC3(buf, "disabled\n");
	else {
		v = (adap->params.vpd.cclk * 1000) / cpt;
		len = FUNC3(buf, "%u Kbps\n", (v * bpt) / 125);
	}
	FUNC2();
	return len;
}