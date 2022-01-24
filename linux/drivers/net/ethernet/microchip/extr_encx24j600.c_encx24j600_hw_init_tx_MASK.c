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
struct encx24j600_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EGPWRPT ; 
 int /*<<< orphan*/  EIR ; 
 int /*<<< orphan*/  ENC_TX_BUF_START ; 
 int TXABTIF ; 
 int TXIF ; 
 int /*<<< orphan*/  FUNC0 (struct encx24j600_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct encx24j600_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct encx24j600_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct encx24j600_priv *priv)
{
	/* Reset TX */
	FUNC1(priv);

	/* Clear the TXIF flag if were previously set */
	FUNC0(priv, EIR, TXIF | TXABTIF);

	/* Write the Tx Buffer pointer */
	FUNC2(priv, EGPWRPT, ENC_TX_BUF_START);
}