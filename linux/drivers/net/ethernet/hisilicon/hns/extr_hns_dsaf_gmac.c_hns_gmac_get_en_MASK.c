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
struct mac_driver {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GMAC_PORT_EN_REG ; 
 int /*<<< orphan*/  GMAC_PORT_RX_EN_B ; 
 int /*<<< orphan*/  GMAC_PORT_TX_EN_B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mac_driver*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *mac_drv, u32 *rx, u32 *tx)
{
	struct mac_driver *drv = (struct mac_driver *)mac_drv;
	u32 porten;

	porten = FUNC1(drv, GMAC_PORT_EN_REG);
	*tx = FUNC0(porten, GMAC_PORT_TX_EN_B);
	*rx = FUNC0(porten, GMAC_PORT_RX_EN_B);
}