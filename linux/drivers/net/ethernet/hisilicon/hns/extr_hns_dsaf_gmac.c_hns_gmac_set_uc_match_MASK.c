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
typedef  int /*<<< orphan*/  u16 ;
struct mac_driver {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GMAC_ADDR_EN_B ; 
 int /*<<< orphan*/  GMAC_REC_FILT_CONTROL_REG ; 
 int /*<<< orphan*/  GMAC_STATION_ADDR_HIGH_2_REG ; 
 int /*<<< orphan*/  GMAC_UC_MATCH_EN_B ; 
 int /*<<< orphan*/  FUNC0 (struct mac_driver*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(void *mac_drv, u16 en)
{
	struct mac_driver *drv = mac_drv;

	FUNC0(drv, GMAC_REC_FILT_CONTROL_REG,
			 GMAC_UC_MATCH_EN_B, !en);
	FUNC0(drv, GMAC_STATION_ADDR_HIGH_2_REG,
			 GMAC_ADDR_EN_B, !en);
}