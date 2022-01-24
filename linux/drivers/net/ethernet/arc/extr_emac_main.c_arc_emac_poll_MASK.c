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
struct napi_struct {struct net_device* dev; } ;
struct arc_emac_priv {int dummy; } ;

/* Variables and functions */
 int RXINT_MASK ; 
 int /*<<< orphan*/  R_ENABLE ; 
 int TXINT_MASK ; 
 unsigned int FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct arc_emac_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct napi_struct*,unsigned int) ; 
 struct arc_emac_priv* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct napi_struct *napi, int budget)
{
	struct net_device *ndev = napi->dev;
	struct arc_emac_priv *priv = FUNC6(ndev);
	unsigned int work_done;

	FUNC3(ndev);
	FUNC1(ndev);

	work_done = FUNC0(ndev, budget);
	if (work_done < budget) {
		FUNC5(napi, work_done);
		FUNC4(priv, R_ENABLE, RXINT_MASK | TXINT_MASK);
	}

	FUNC2(ndev, budget, work_done);

	return work_done;
}