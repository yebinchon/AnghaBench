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
typedef  int /*<<< orphan*/  u64 ;
struct niu {int /*<<< orphan*/  port; TYPE_1__* parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  port_phy; } ;

/* Variables and functions */
#define  PORT_TYPE_10G 129 
#define  PORT_TYPE_1G 128 
 int /*<<< orphan*/  PT_DRR_WEIGHT_DEFAULT_10G ; 
 int /*<<< orphan*/  PT_DRR_WEIGHT_DEFAULT_1G ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct niu *np)
{
	int type = FUNC2(np->parent->port_phy, np->port);
	u64 val;

	switch (type) {
	case PORT_TYPE_10G:
		val = PT_DRR_WEIGHT_DEFAULT_10G;
		break;

	case PORT_TYPE_1G:
	default:
		val = PT_DRR_WEIGHT_DEFAULT_1G;
		break;
	}
	FUNC1(FUNC0(np->port), val);
}