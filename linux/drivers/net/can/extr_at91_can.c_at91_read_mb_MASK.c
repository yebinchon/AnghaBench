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
struct net_device {int dummy; } ;
struct can_frame {int can_id; scalar_t__ data; int /*<<< orphan*/  can_dlc; } ;
struct at91_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int AT91_MID_MIDE ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int AT91_MSR_MMI ; 
 int AT91_MSR_MRTR ; 
 int CAN_EFF_FLAG ; 
 int CAN_EFF_MASK ; 
 int CAN_RTR_FLAG ; 
 int CAN_SFF_MASK ; 
 int FUNC4 (struct at91_priv const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct at91_priv const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 unsigned int FUNC8 (struct at91_priv const*) ; 
 struct at91_priv* FUNC9 (struct net_device*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct net_device *dev, unsigned int mb,
		struct can_frame *cf)
{
	const struct at91_priv *priv = FUNC9(dev);
	u32 reg_msr, reg_mid;

	reg_mid = FUNC4(priv, FUNC2(mb));
	if (reg_mid & AT91_MID_MIDE)
		cf->can_id = ((reg_mid >> 0) & CAN_EFF_MASK) | CAN_EFF_FLAG;
	else
		cf->can_id = (reg_mid >> 18) & CAN_SFF_MASK;

	reg_msr = FUNC4(priv, FUNC3(mb));
	cf->can_dlc = FUNC7((reg_msr >> 16) & 0xf);

	if (reg_msr & AT91_MSR_MRTR)
		cf->can_id |= CAN_RTR_FLAG;
	else {
		*(u32 *)(cf->data + 0) = FUNC4(priv, FUNC1(mb));
		*(u32 *)(cf->data + 4) = FUNC4(priv, FUNC0(mb));
	}

	/* allow RX of extended frames */
	FUNC6(priv, FUNC2(mb), AT91_MID_MIDE);

	if (FUNC10(mb == FUNC8(priv) && reg_msr & AT91_MSR_MMI))
		FUNC5(dev);
}