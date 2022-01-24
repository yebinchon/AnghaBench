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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct phylink_link_state {scalar_t__ interface; } ;
struct b53_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ B53_INVALID_LANE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FIBER_MODE_1000X ; 
 scalar_t__ PHY_INTERFACE_MODE_1000BASEX ; 
 int /*<<< orphan*/  SERDES_DIGITAL_BLK ; 
 scalar_t__ FUNC1 (struct b53_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b53_device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b53_device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct b53_device *dev, int port, unsigned int mode,
		       const struct phylink_link_state *state)
{
	u8 lane = FUNC1(dev, port);
	u16 reg;

	if (lane == B53_INVALID_LANE)
		return;

	reg = FUNC2(dev, lane, FUNC0(1),
			      SERDES_DIGITAL_BLK);
	if (state->interface == PHY_INTERFACE_MODE_1000BASEX)
		reg |= FIBER_MODE_1000X;
	else
		reg &= ~FIBER_MODE_1000X;
	FUNC3(dev, lane, FUNC0(1),
			 SERDES_DIGITAL_BLK, reg);
}