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
struct mvneta_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MVNETA_GMAC_CTRL_0 ; 
 int MVNETA_GMAC_MAX_RX_SIZE_MASK ; 
 int MVNETA_GMAC_MAX_RX_SIZE_SHIFT ; 
 int MVNETA_MH_SIZE ; 
 int FUNC0 (struct mvneta_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mvneta_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct mvneta_port *pp, int max_rx_size)
{
	u32 val;

	val =  FUNC0(pp, MVNETA_GMAC_CTRL_0);
	val &= ~MVNETA_GMAC_MAX_RX_SIZE_MASK;
	val |= ((max_rx_size - MVNETA_MH_SIZE) / 2) <<
		MVNETA_GMAC_MAX_RX_SIZE_SHIFT;
	FUNC1(pp, MVNETA_GMAC_CTRL_0, val);
}