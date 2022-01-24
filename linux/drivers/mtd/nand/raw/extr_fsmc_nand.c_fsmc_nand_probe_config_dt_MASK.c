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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct nand_chip {int /*<<< orphan*/  options; } ;
struct fsmc_nand_data {int bank; int /*<<< orphan*/ * dev_timings; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NAND_BUSWIDTH_16 ; 
 int /*<<< orphan*/  NAND_SKIP_BBTSCAN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,char*,int*) ; 
 int FUNC4 (struct device_node*,char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev,
				     struct fsmc_nand_data *host,
				     struct nand_chip *nand)
{
	struct device_node *np = pdev->dev.of_node;
	u32 val;
	int ret;

	nand->options = 0;

	if (!FUNC3(np, "bank-width", &val)) {
		if (val == 2) {
			nand->options |= NAND_BUSWIDTH_16;
		} else if (val != 1) {
			FUNC0(&pdev->dev, "invalid bank-width %u\n", val);
			return -EINVAL;
		}
	}

	if (FUNC2(np, "nand-skip-bbtscan", NULL))
		nand->options |= NAND_SKIP_BBTSCAN;

	host->dev_timings = FUNC1(&pdev->dev,
					 sizeof(*host->dev_timings),
					 GFP_KERNEL);
	if (!host->dev_timings)
		return -ENOMEM;

	ret = FUNC4(np, "timings", (u8 *)host->dev_timings,
					sizeof(*host->dev_timings));
	if (ret)
		host->dev_timings = NULL;

	/* Set default NAND bank to 0 */
	host->bank = 0;
	if (!FUNC3(np, "bank", &val)) {
		if (val > 3) {
			FUNC0(&pdev->dev, "invalid bank %u\n", val);
			return -EINVAL;
		}
		host->bank = val;
	}
	return 0;
}