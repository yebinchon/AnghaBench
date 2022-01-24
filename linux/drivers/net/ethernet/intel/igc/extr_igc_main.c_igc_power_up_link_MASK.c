#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ media_type; } ;
struct TYPE_6__ {TYPE_1__ phy; } ;
struct igc_adapter {TYPE_2__ hw; } ;

/* Variables and functions */
 scalar_t__ igc_media_type_copper ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(struct igc_adapter *adapter)
{
	FUNC1(&adapter->hw);

	if (adapter->hw.phy.media_type == igc_media_type_copper)
		FUNC0(&adapter->hw);

	FUNC2(&adapter->hw);
}