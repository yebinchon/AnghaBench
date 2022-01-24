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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  PHY_INTERFACE_MODE_GMII 135 
#define  PHY_INTERFACE_MODE_MII 134 
#define  PHY_INTERFACE_MODE_RGMII 133 
#define  PHY_INTERFACE_MODE_RGMII_ID 132 
#define  PHY_INTERFACE_MODE_RGMII_RXID 131 
#define  PHY_INTERFACE_MODE_RGMII_TXID 130 
#define  PHY_INTERFACE_MODE_RTBI 129 
#define  PHY_INTERFACE_MODE_TBI 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static inline u32 FUNC6(int mode, int input)
{
	switch (mode) {
	case PHY_INTERFACE_MODE_RGMII:
	case PHY_INTERFACE_MODE_RGMII_ID:
	case PHY_INTERFACE_MODE_RGMII_RXID:
	case PHY_INTERFACE_MODE_RGMII_TXID:
		return FUNC3(input);
	case PHY_INTERFACE_MODE_TBI:
		return FUNC5(input);
	case PHY_INTERFACE_MODE_GMII:
		return FUNC1(input);
	case PHY_INTERFACE_MODE_MII:
		return FUNC2(input);
	case PHY_INTERFACE_MODE_RTBI:
		return FUNC4(input);
	default:
		FUNC0();
	}
}