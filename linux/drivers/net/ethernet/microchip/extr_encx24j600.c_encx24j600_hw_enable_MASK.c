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
struct encx24j600_priv {int hw_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIE ; 
 int /*<<< orphan*/  EIR ; 
 int /*<<< orphan*/  ENABLERX ; 
 int INTIE ; 
 int LINKIE ; 
 int LINKIF ; 
 int PCFULIE ; 
 int PCFULIF ; 
 int PKTIE ; 
 int PKTIF ; 
 int RXABTIE ; 
 int RXABTIF ; 
 int TXABTIE ; 
 int TXABTIF ; 
 int TXIE ; 
 int TXIF ; 
 int /*<<< orphan*/  FUNC0 (struct encx24j600_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct encx24j600_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct encx24j600_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct encx24j600_priv *priv)
{
	/* Clear the interrupt flags in case was set */
	FUNC0(priv, EIR, (PCFULIF | RXABTIF | TXABTIF | TXIF |
					PKTIF | LINKIF));

	/* Enable the interrupts */
	FUNC2(priv, EIE, (PCFULIE | RXABTIE | TXABTIE | TXIE |
					 PKTIE | LINKIE | INTIE));

	/* Enable RX */
	FUNC1(priv, ENABLERX);

	priv->hw_enabled = true;
}