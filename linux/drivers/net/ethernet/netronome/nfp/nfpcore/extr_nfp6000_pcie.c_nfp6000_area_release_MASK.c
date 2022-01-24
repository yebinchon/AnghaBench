#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nfp_cpp_area {int dummy; } ;
struct nfp6000_pcie {int dummy; } ;
struct nfp6000_area_priv {int /*<<< orphan*/ * iomem; TYPE_1__* bar; } ;
struct TYPE_2__ {int /*<<< orphan*/  iomem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp6000_pcie*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_cpp_area*) ; 
 struct nfp6000_area_priv* FUNC3 (struct nfp_cpp_area*) ; 
 struct nfp6000_pcie* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_cpp_area*) ; 

__attribute__((used)) static void FUNC6(struct nfp_cpp_area *area)
{
	struct nfp6000_pcie *nfp = FUNC4(FUNC2(area));
	struct nfp6000_area_priv *priv = FUNC3(area);

	if (!FUNC5(area))
		return;

	if (!priv->bar->iomem)
		FUNC0(priv->iomem);

	FUNC1(nfp, priv->bar);

	priv->bar = NULL;
	priv->iomem = NULL;
}