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
struct efx_nic {int dummy; } ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int FUNC0 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct efx_nic *efx, __be16 proto, u16 vid)
{
	if (proto != FUNC1(ETH_P_8021Q))
		return -EINVAL;

	return FUNC0(efx, vid);
}