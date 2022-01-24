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
struct resource {int dummy; } ;
struct net_device {int dummy; } ;
struct fec_enet_private {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 struct fec_enet_private* FUNC0 (struct net_device*) ; 
 struct resource* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct resource*) ; 

__attribute__((used)) static int FUNC3(struct net_device *ndev)
{
	struct fec_enet_private *fep = FUNC0(ndev);
	struct resource *r;
	int s = 0;

	r = FUNC1(fep->pdev, IORESOURCE_MEM, 0);
	if (r)
		s = FUNC2(r);

	return s;
}