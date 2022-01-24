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
struct lan743x_adapter {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lan743x_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct lan743x_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct lan743x_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct lan743x_adapter *adapter)
{
	FUNC3(adapter->netdev);

	FUNC1(adapter);
	FUNC0(adapter);
	FUNC2(adapter);
}