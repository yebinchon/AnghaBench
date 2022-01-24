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
struct mwl8k_priv {scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  MWL8K_H2A_INT_DUMMY ; 
 int /*<<< orphan*/  MWL8K_H2A_INT_PPA_READY ; 
 scalar_t__ MWL8K_HIU_H2A_INTERRUPT_EVENTS ; 
 scalar_t__ MWL8K_HIU_INT_CODE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC2(struct mwl8k_priv *priv)
{
	FUNC1(MWL8K_H2A_INT_PPA_READY,
		priv->regs + MWL8K_HIU_H2A_INTERRUPT_EVENTS);
	FUNC1(MWL8K_H2A_INT_DUMMY,
		priv->regs + MWL8K_HIU_H2A_INTERRUPT_EVENTS);
	FUNC0(priv->regs + MWL8K_HIU_INT_CODE);
}