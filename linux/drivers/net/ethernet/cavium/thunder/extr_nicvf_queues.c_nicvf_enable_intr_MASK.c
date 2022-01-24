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
typedef  int u64 ;
struct nicvf {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NIC_VF_ENA_W1S ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (struct nicvf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nicvf*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct nicvf *nic, int int_type, int q_idx)
{
	u64 mask = FUNC1(int_type, q_idx);

	if (!mask) {
		FUNC0(nic->netdev,
			   "Failed to enable interrupt: unknown type\n");
		return;
	}
	FUNC3(nic, NIC_VF_ENA_W1S,
			FUNC2(nic, NIC_VF_ENA_W1S) | mask);
}