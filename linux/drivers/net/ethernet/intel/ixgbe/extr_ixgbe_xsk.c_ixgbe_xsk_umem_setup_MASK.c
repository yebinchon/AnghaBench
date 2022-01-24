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
typedef  int /*<<< orphan*/  u16 ;
struct xdp_umem {int dummy; } ;
struct ixgbe_adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ixgbe_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ixgbe_adapter*,struct xdp_umem*,int /*<<< orphan*/ ) ; 

int FUNC2(struct ixgbe_adapter *adapter, struct xdp_umem *umem,
			 u16 qid)
{
	return umem ? FUNC1(adapter, umem, qid) :
		FUNC0(adapter, qid);
}