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
struct xgbe_prv_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DESC_DED ; 
 int /*<<< orphan*/  RX_DED ; 
 int /*<<< orphan*/  TX_DED ; 
 int /*<<< orphan*/  XP_ECC_IER ; 
 unsigned int FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct xgbe_prv_data *pdata)
{
	unsigned int ecc_ier;

	ecc_ier = FUNC0(pdata, XP_ECC_IER);

	/* Disable ECC DED interrupts */
	FUNC2(ecc_ier, XP_ECC_IER, TX_DED, 0);
	FUNC2(ecc_ier, XP_ECC_IER, RX_DED, 0);
	FUNC2(ecc_ier, XP_ECC_IER, DESC_DED, 0);

	FUNC1(pdata, XP_ECC_IER, ecc_ier);
}