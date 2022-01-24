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
struct ixgbe_adapter {int /*<<< orphan*/  af_xdp_zc_qps; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_adapter*,struct xdp_umem*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct xdp_umem* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ixgbe_adapter *adapter, u16 qid)
{
	struct xdp_umem *umem;
	bool if_running;

	umem = FUNC6(adapter->netdev, qid);
	if (!umem)
		return -EINVAL;

	if_running = FUNC5(adapter->netdev) &&
		     FUNC1(adapter);

	if (if_running)
		FUNC2(adapter, qid);

	FUNC0(qid, adapter->af_xdp_zc_qps);
	FUNC4(adapter, umem);

	if (if_running)
		FUNC3(adapter, qid);

	return 0;
}