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
struct mvneta_bm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MVNETA_BM_CONFIG_REG ; 
 int /*<<< orphan*/  MVNETA_BM_INTR_CAUSE_REG ; 
 int /*<<< orphan*/  MVNETA_BM_INTR_MASK_REG ; 
 int /*<<< orphan*/  MVNETA_BM_MAX_IN_BURST_SIZE_16BP ; 
 int /*<<< orphan*/  MVNETA_BM_MAX_IN_BURST_SIZE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct mvneta_bm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mvneta_bm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mvneta_bm *priv)
{
	u32 val;

	/* Mask BM all interrupts */
	FUNC1(priv, MVNETA_BM_INTR_MASK_REG, 0);

	/* Clear BM cause register */
	FUNC1(priv, MVNETA_BM_INTR_CAUSE_REG, 0);

	/* Set BM configuration register */
	val = FUNC0(priv, MVNETA_BM_CONFIG_REG);

	/* Reduce MaxInBurstSize from 32 BPs to 16 BPs */
	val &= ~MVNETA_BM_MAX_IN_BURST_SIZE_MASK;
	val |= MVNETA_BM_MAX_IN_BURST_SIZE_16BP;
	FUNC1(priv, MVNETA_BM_CONFIG_REG, val);
}