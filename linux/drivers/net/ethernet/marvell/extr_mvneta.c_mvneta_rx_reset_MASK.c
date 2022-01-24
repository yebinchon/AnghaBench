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
struct mvneta_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MVNETA_PORT_RX_DMA_RESET ; 
 int /*<<< orphan*/  MVNETA_PORT_RX_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct mvneta_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct mvneta_port *pp)
{
	FUNC0(pp, MVNETA_PORT_RX_RESET, MVNETA_PORT_RX_DMA_RESET);
	FUNC0(pp, MVNETA_PORT_RX_RESET, 0);
}