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
typedef  int u32 ;
struct lan743x_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_CFG ; 
 int HW_CFG_LRST_ ; 
 int /*<<< orphan*/  LAN743X_CSR_READ_OP ; 
 int FUNC0 (struct lan743x_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lan743x_adapter*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 

__attribute__((used)) static int FUNC3(struct lan743x_adapter *adapter)
{
	u32 data;

	data = FUNC0(adapter, HW_CFG);
	data |= HW_CFG_LRST_;
	FUNC1(adapter, HW_CFG, data);

	return FUNC2(LAN743X_CSR_READ_OP, HW_CFG, data,
				  !(data & HW_CFG_LRST_), 100000, 10000000);
}