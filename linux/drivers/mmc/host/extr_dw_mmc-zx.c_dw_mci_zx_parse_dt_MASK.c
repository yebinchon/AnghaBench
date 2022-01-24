#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct regmap {int dummy; } ;
struct dw_mci_zx_priv_data {struct regmap* sysc_base; } ;
struct dw_mci {struct dw_mci_zx_priv_data* priv; TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 struct dw_mci_zx_priv_data* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 struct device_node* FUNC5 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC6 (struct device_node*) ; 

__attribute__((used)) static int FUNC7(struct dw_mci *host)
{
	struct device_node *np = host->dev->of_node;
	struct device_node *node;
	struct dw_mci_zx_priv_data *priv;
	struct regmap *sysc_base;
	int ret;

	/* syscon is needed only by emmc */
	node = FUNC5(np, "zte,aon-syscon", 0);
	if (node) {
		sysc_base = FUNC6(node);
		FUNC4(node);

		if (FUNC0(sysc_base)) {
			ret = FUNC1(sysc_base);
			if (ret != -EPROBE_DEFER)
				FUNC2(host->dev, "Can't get syscon: %d\n",
					ret);
			return ret;
		}
	} else {
		return 0;
	}

	priv = FUNC3(host->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;
	priv->sysc_base = sysc_base;
	host->priv = priv;

	return 0;
}