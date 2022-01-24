#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct vcap_data {int /*<<< orphan*/  counter_offset; int /*<<< orphan*/  counter; int /*<<< orphan*/  tg_sw; } ;
struct TYPE_4__ {int /*<<< orphan*/  pkts; } ;
struct ocelot_ace_rule {TYPE_1__ stats; TYPE_2__* port; } ;
struct ocelot {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  counter_width; } ;
struct TYPE_5__ {struct ocelot* ocelot; } ;

/* Variables and functions */
 int /*<<< orphan*/  VCAP_CMD_READ ; 
 int /*<<< orphan*/  VCAP_SEL_COUNTER ; 
 int /*<<< orphan*/  VCAP_TG_HALF ; 
 int /*<<< orphan*/  FUNC0 (struct vcap_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ocelot*,struct vcap_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ vcap_is2 ; 
 int /*<<< orphan*/  FUNC3 (struct ocelot*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ocelot_ace_rule *rule, int ix)
{
	struct ocelot *op = rule->port->ocelot;
	struct vcap_data data;
	int row = (ix / 2);
	u32 cnt;

	FUNC3(op, row, VCAP_CMD_READ, VCAP_SEL_COUNTER);
	FUNC1(op, &data);
	data.tg_sw = VCAP_TG_HALF;
	FUNC0(&data, ix);
	cnt = FUNC2(data.counter, data.counter_offset,
			    vcap_is2.counter_width);

	rule->stats.pkts = cnt;
}