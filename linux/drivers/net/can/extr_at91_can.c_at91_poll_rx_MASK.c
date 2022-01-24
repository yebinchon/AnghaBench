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
struct net_device {int dummy; } ;
struct at91_priv {scalar_t__ rx_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_SR ; 
 int /*<<< orphan*/  FUNC0 (struct at91_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct at91_priv*,unsigned int) ; 
 int FUNC2 (struct at91_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,unsigned int) ; 
 unsigned int FUNC4 (unsigned long const*,unsigned int,scalar_t__) ; 
 scalar_t__ FUNC5 (struct at91_priv*) ; 
 unsigned int FUNC6 (struct at91_priv*) ; 
 scalar_t__ FUNC7 (struct at91_priv*) ; 
 int FUNC8 (struct at91_priv*) ; 
 unsigned int FUNC9 (struct at91_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,char*) ; 
 struct at91_priv* FUNC11 (struct net_device*) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev, int quota)
{
	struct at91_priv *priv = FUNC11(dev);
	u32 reg_sr = FUNC2(priv, AT91_SR);
	const unsigned long *addr = (unsigned long *)&reg_sr;
	unsigned int mb;
	int received = 0;

	if (priv->rx_next > FUNC7(priv) &&
	    reg_sr & FUNC8(priv))
		FUNC10(dev,
			"order of incoming frames cannot be guaranteed\n");

 again:
	for (mb = FUNC4(addr, FUNC9(priv), priv->rx_next);
	     mb < FUNC9(priv) && quota > 0;
	     reg_sr = FUNC2(priv, AT91_SR),
	     mb = FUNC4(addr, FUNC9(priv), ++priv->rx_next)) {
		FUNC3(dev, mb);

		/* reactivate mailboxes */
		if (mb == FUNC7(priv))
			/* all lower mailboxed, if just finished it */
			FUNC0(priv);
		else if (mb > FUNC7(priv))
			/* only the mailbox we read */
			FUNC1(priv, mb);

		received++;
		quota--;
	}

	/* upper group completed, look again in lower */
	if (priv->rx_next > FUNC7(priv) &&
	    mb > FUNC6(priv)) {
		priv->rx_next = FUNC5(priv);
		if (quota > 0)
			goto again;
	}

	return received;
}