#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ media_type; } ;
struct TYPE_7__ {TYPE_1__ phy; } ;
struct igb_adapter {TYPE_2__ hw; } ;

/* Variables and functions */
 scalar_t__ e1000_media_type_copper ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void FUNC4(struct igb_adapter *adapter)
{
	FUNC2(&adapter->hw);

	if (adapter->hw.phy.media_type == e1000_media_type_copper)
		FUNC0(&adapter->hw);
	else
		FUNC1(&adapter->hw);

	FUNC3(&adapter->hw);
}