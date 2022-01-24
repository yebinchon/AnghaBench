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
struct gbe_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gbe_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int RGMII_REG_STATUS_LINK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rgmii_status ; 
 int /*<<< orphan*/  ss_regs ; 

__attribute__((used)) static void FUNC2(struct gbe_priv *gbe_dev, bool *status)
{
	u32 val = 0;

	val = FUNC1(FUNC0(gbe_dev, ss_regs, rgmii_status));
	*status = !!(val & RGMII_REG_STATUS_LINK);
}