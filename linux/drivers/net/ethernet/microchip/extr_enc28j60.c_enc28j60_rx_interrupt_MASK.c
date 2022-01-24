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
struct net_device {int dummy; } ;
struct enc28j60_net {int max_pk_counter; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPKTCNT ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (struct enc28j60_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*,char*,int) ; 
 struct enc28j60_net* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct enc28j60_net*) ; 
 scalar_t__ FUNC5 (struct enc28j60_net*) ; 

__attribute__((used)) static int FUNC6(struct net_device *ndev)
{
	struct enc28j60_net *priv = FUNC3(ndev);
	int pk_counter, ret;

	pk_counter = FUNC1(priv, EPKTCNT);
	if (pk_counter && FUNC4(priv))
		FUNC2(KERN_DEBUG, ndev, "intRX, pk_cnt: %d\n",
			      pk_counter);
	if (pk_counter > priv->max_pk_counter) {
		/* update statistics */
		priv->max_pk_counter = pk_counter;
		if (FUNC5(priv) && priv->max_pk_counter > 1)
			FUNC2(KERN_DEBUG, ndev, "RX max_pk_cnt: %d\n",
				      priv->max_pk_counter);
	}
	ret = pk_counter;
	while (pk_counter-- > 0)
		FUNC0(ndev);

	return ret;
}