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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct enetc_pf {int /*<<< orphan*/  active_vlans; } ;
struct enetc_ndev_priv {int /*<<< orphan*/  si; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct enetc_pf*,int /*<<< orphan*/ ) ; 
 struct enetc_pf* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct enetc_pf*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct enetc_pf*) ; 
 struct enetc_ndev_priv* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *ndev, __be16 prot, u16 vid)
{
	struct enetc_ndev_priv *priv = FUNC5(ndev);
	struct enetc_pf *pf = FUNC2(priv->si);

	FUNC0(vid, pf->active_vlans);
	FUNC3(pf, true);

	if (!FUNC4(pf))
		FUNC1(pf, 0);

	return 0;
}