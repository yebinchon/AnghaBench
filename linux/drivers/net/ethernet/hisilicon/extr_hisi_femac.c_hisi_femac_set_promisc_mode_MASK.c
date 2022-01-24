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
typedef  int /*<<< orphan*/  u32 ;
struct hisi_femac_priv {scalar_t__ glb_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FWCTRL_FWALL2CPU ; 
 scalar_t__ GLB_FWCTRL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct hisi_femac_priv *priv,
					bool promisc_mode)
{
	u32 val;

	val = FUNC0(priv->glb_base + GLB_FWCTRL);
	if (promisc_mode)
		val |= FWCTRL_FWALL2CPU;
	else
		val &= ~FWCTRL_FWALL2CPU;
	FUNC1(val, priv->glb_base + GLB_FWCTRL);
}