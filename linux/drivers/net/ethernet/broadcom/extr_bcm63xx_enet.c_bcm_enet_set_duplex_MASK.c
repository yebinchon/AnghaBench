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
struct bcm_enet_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENET_TXCTL_FD_MASK ; 
 int /*<<< orphan*/  ENET_TXCTL_REG ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_enet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_enet_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct bcm_enet_priv *priv, int fullduplex)
{
	u32 val;

	val = FUNC0(priv, ENET_TXCTL_REG);
	if (fullduplex)
		val |= ENET_TXCTL_FD_MASK;
	else
		val &= ~ENET_TXCTL_FD_MASK;
	FUNC1(priv, val, ENET_TXCTL_REG);
}