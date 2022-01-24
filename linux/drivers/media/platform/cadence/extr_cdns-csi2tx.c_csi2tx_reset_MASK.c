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
struct csi2tx_priv {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ CSI2TX_CONFIG_REG ; 
 int /*<<< orphan*/  CSI2TX_CONFIG_SRST_REQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct csi2tx_priv *csi2tx)
{
	FUNC1(CSI2TX_CONFIG_SRST_REQ, csi2tx->base + CSI2TX_CONFIG_REG);

	FUNC0(10);
}