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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct ksz_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KS8841_WOL_FRAME0_ENABLE ; 
 int /*<<< orphan*/  KS8841_WOL_FRAME1_ENABLE ; 
 int /*<<< orphan*/  KS8841_WOL_FRAME2_ENABLE ; 
 int /*<<< orphan*/  KS8841_WOL_FRAME3_ENABLE ; 
 int /*<<< orphan*/  KS8841_WOL_MAGIC_ENABLE ; 
 int WAKE_ARP ; 
 int WAKE_BCAST ; 
 int WAKE_MAGIC ; 
 int WAKE_MCAST ; 
 int WAKE_UCAST ; 
 int /*<<< orphan*/  FUNC0 (struct ksz_hw*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ksz_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct ksz_hw *hw, u32 wol_enable, const u8 *net_addr)
{
	FUNC3(hw, KS8841_WOL_MAGIC_ENABLE, (wol_enable & WAKE_MAGIC));
	FUNC3(hw, KS8841_WOL_FRAME0_ENABLE, (wol_enable & WAKE_UCAST));
	FUNC2(hw);
	FUNC3(hw, KS8841_WOL_FRAME1_ENABLE, (wol_enable & WAKE_MCAST));
	FUNC1(hw);
	FUNC3(hw, KS8841_WOL_FRAME2_ENABLE, (wol_enable & WAKE_BCAST));
	FUNC3(hw, KS8841_WOL_FRAME3_ENABLE, (wol_enable & WAKE_ARP));
	FUNC0(hw, net_addr);
}