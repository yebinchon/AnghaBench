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
struct mvneta_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MVNETA_GMAC0_PORT_ENABLE ; 
 int /*<<< orphan*/  MVNETA_GMAC_CTRL_0 ; 
 int /*<<< orphan*/  FUNC0 (struct mvneta_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mvneta_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct mvneta_port *pp)
{
	u32 val;

	/* Reset the Enable bit in the Serial Control Register */
	val = FUNC0(pp, MVNETA_GMAC_CTRL_0);
	val &= ~MVNETA_GMAC0_PORT_ENABLE;
	FUNC1(pp, MVNETA_GMAC_CTRL_0, val);

	FUNC2(200);
}