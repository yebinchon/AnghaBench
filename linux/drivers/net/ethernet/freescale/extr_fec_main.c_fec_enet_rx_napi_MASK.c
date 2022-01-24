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
struct fec_enet_private {scalar_t__ hwp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FEC_DEFAULT_IMASK ; 
 scalar_t__ FEC_IMASK ; 
 int FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct napi_struct*,int) ; 
 struct fec_enet_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct napi_struct *napi, int budget)
{
	struct net_device *ndev = napi->dev;
	struct fec_enet_private *fep = FUNC3(ndev);
	int pkts;

	pkts = FUNC0(ndev, budget);

	FUNC1(ndev);

	if (pkts < budget) {
		FUNC2(napi, pkts);
		FUNC4(FEC_DEFAULT_IMASK, fep->hwp + FEC_IMASK);
	}
	return pkts;
}