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
struct igbvf_adapter {int /*<<< orphan*/  rx_ring; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct igbvf_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct igbvf_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct igbvf_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct igbvf_adapter*) ; 

__attribute__((used)) static void FUNC7(struct igbvf_adapter *adapter)
{
	FUNC5(adapter->netdev);

	FUNC4(adapter);

	FUNC2(adapter);
	FUNC6(adapter);
	FUNC1(adapter);
	FUNC0(adapter->rx_ring,
			       FUNC3(adapter->rx_ring));
}