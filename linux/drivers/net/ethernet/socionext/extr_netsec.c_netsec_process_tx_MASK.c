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
struct netsec_priv {struct net_device* ndev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct netsec_priv*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct netsec_priv *priv)
{
	struct net_device *ndev = priv->ndev;
	bool cleaned;

	cleaned = FUNC2(priv);

	if (cleaned && FUNC0(ndev)) {
		/* Make sure we update the value, anyone stopping the queue
		 * after this will read the proper consumer idx
		 */
		FUNC3();
		FUNC1(ndev);
	}
}