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
struct atl2_adapter {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IMR_NORMAL_MASK ; 
 int /*<<< orphan*/  REG_IMR ; 

__attribute__((used)) static inline void FUNC2(struct atl2_adapter *adapter)
{
	FUNC1(&adapter->hw, REG_IMR, IMR_NORMAL_MASK);
	FUNC0(&adapter->hw);
}