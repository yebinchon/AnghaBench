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
#define  PHY_INTERFACE_MODE_MII 130 
#define  PHY_INTERFACE_MODE_RMII 129 
#define  PHY_INTERFACE_MODE_SMII 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static inline u32 FUNC3(int mode, int input)
{
	switch (mode) {
	case PHY_INTERFACE_MODE_MII:
		return FUNC0(input);
	case PHY_INTERFACE_MODE_RMII:
		return FUNC1(input);
	case PHY_INTERFACE_MODE_SMII:
		return FUNC2(input);
	default:
		return 0;
	}
}