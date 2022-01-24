#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ media_type; } ;
struct e1000_hw {TYPE_1__ phy; } ;
struct igb_adapter {struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_CONNSW ; 
 int E1000_CONNSW_AUTOSENSE_EN ; 
 int E1000_CONNSW_ENRGSRC ; 
 int E1000_CONNSW_SERDESD ; 
 scalar_t__ e1000_media_type_copper ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct igb_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	u32 connsw = FUNC0(E1000_CONNSW);

	/* configure for SerDes media detect */
	if ((hw->phy.media_type == e1000_media_type_copper) &&
	    (!(connsw & E1000_CONNSW_SERDESD))) {
		connsw |= E1000_CONNSW_ENRGSRC;
		connsw |= E1000_CONNSW_AUTOSENSE_EN;
		FUNC1(E1000_CONNSW, connsw);
		FUNC2();
	}
}