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
struct net_device {int dummy; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int const) ; 
 unsigned int FUNC1 (unsigned int const) ; 
 unsigned int FUNC2 (unsigned int const) ; 
 unsigned int FUNC3 (unsigned int const) ; 
 int /*<<< orphan*/  ULP_RX_ISCSI_PSZ_A ; 
 int /*<<< orphan*/  ULP_RX_ISCSI_TAGMASK_A ; 
 struct adapter* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,unsigned int) ; 

void FUNC6(struct net_device *dev, unsigned int tag_mask,
		      const unsigned int *pgsz_order)
{
	struct adapter *adap = FUNC4(dev);

	FUNC5(adap, ULP_RX_ISCSI_TAGMASK_A, tag_mask);
	FUNC5(adap, ULP_RX_ISCSI_PSZ_A, FUNC0(pgsz_order[0]) |
		     FUNC1(pgsz_order[1]) | FUNC2(pgsz_order[2]) |
		     FUNC3(pgsz_order[3]));
}