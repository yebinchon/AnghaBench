#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct nfp_cpp_area {int dummy; } ;
struct nfp6000_pcie {int /*<<< orphan*/  dev; TYPE_3__* bar; } ;
struct TYPE_10__ {int /*<<< orphan*/  flags; scalar_t__ start; scalar_t__ end; int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int /*<<< orphan*/  bar; } ;
struct nfp6000_area_priv {int offset; int bar_offset; TYPE_3__* bar; int /*<<< orphan*/ * iomem; scalar_t__ size; scalar_t__ phys; TYPE_2__ resource; int /*<<< orphan*/  token; int /*<<< orphan*/  target; TYPE_1__ width; int /*<<< orphan*/  action; } ;
struct TYPE_11__ {int mask; int /*<<< orphan*/  index; int /*<<< orphan*/ * iomem; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ NFP_PCIE_BAR_PCIE2CPP_MapType_GENERAL ; 
 int FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__,scalar_t__) ; 
 int FUNC7 (struct nfp6000_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfp6000_pcie*,TYPE_3__*) ; 
 scalar_t__ FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (struct nfp_cpp_area*) ; 
 int /*<<< orphan*/  FUNC12 (struct nfp_cpp_area*) ; 
 struct nfp6000_area_priv* FUNC13 (struct nfp_cpp_area*) ; 
 struct nfp6000_pcie* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct nfp_cpp_area*) ; 

__attribute__((used)) static int FUNC16(struct nfp_cpp_area *area)
{
	struct nfp6000_pcie *nfp = FUNC14(FUNC11(area));
	struct nfp6000_area_priv *priv = FUNC13(area);
	int barnum, err;

	if (priv->bar) {
		/* Already allocated. */
		FUNC15(area);
		return 0;
	}

	barnum = FUNC7(nfp, priv->target, priv->action, priv->token,
			       priv->offset, priv->size, priv->width.bar, 1);

	if (barnum < 0) {
		err = barnum;
		goto err_alloc_bar;
	}
	priv->bar = &nfp->bar[barnum];

	/* Calculate offset into BAR. */
	if (FUNC8(priv->bar) ==
	    NFP_PCIE_BAR_PCIE2CPP_MapType_GENERAL) {
		priv->bar_offset = priv->offset &
			(FUNC1(priv->bar) - 1);
		priv->bar_offset += FUNC2(
			priv->bar, priv->target);
		priv->bar_offset += FUNC3(
			priv->bar, priv->token);
	} else {
		priv->bar_offset = priv->offset & priv->bar->mask;
	}

	/* We don't actually try to acquire the resource area using
	 * request_resource.  This would prevent sharing the mapped
	 * BAR between multiple CPP areas and prevent us from
	 * effectively utilizing the limited amount of BAR resources.
	 */
	priv->phys = FUNC10(priv->bar) + priv->bar_offset;
	priv->resource.name = FUNC12(area);
	priv->resource.start = priv->phys;
	priv->resource.end = priv->resource.start + priv->size - 1;
	priv->resource.flags = IORESOURCE_MEM;

	/* If the bar is already mapped in, use its mapping */
	if (priv->bar->iomem)
		priv->iomem = priv->bar->iomem + priv->bar_offset;
	else
		/* Must have been too big. Sub-allocate. */
		priv->iomem = FUNC6(priv->phys, priv->size);

	if (FUNC0(priv->iomem)) {
		FUNC5(nfp->dev, "Can't ioremap() a %d byte region of BAR %d\n",
			(int)priv->size, priv->bar->index);
		err = !priv->iomem ? -ENOMEM : FUNC4(priv->iomem);
		priv->iomem = NULL;
		goto err_iomem_remap;
	}

	FUNC15(area);
	return 0;

err_iomem_remap:
	FUNC9(nfp, priv->bar);
	priv->bar = NULL;
err_alloc_bar:
	return err;
}