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
struct gswip_priv {int /*<<< orphan*/  rcu_regmap; struct device* dev; } ;
struct gswip_gphy_fw {int /*<<< orphan*/  reset; int /*<<< orphan*/  fw_addr_offset; int /*<<< orphan*/  fw_name; int /*<<< orphan*/  clk_gate; } ;
struct firmware {size_t size; int /*<<< orphan*/  data; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC1 (void*,size_t) ; 
 size_t XRX200_GPHY_FW_ALIGN ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 void* FUNC4 (struct device*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct firmware const*) ; 
 int FUNC8 (struct firmware const**,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct gswip_priv *priv, struct gswip_gphy_fw *gphy_fw)
{
	struct device *dev = priv->dev;
	const struct firmware *fw;
	void *fw_addr;
	dma_addr_t dma_addr;
	dma_addr_t dev_addr;
	size_t size;
	int ret;

	ret = FUNC2(gphy_fw->clk_gate);
	if (ret)
		return ret;

	FUNC9(gphy_fw->reset);

	ret = FUNC8(&fw, gphy_fw->fw_name, dev);
	if (ret) {
		FUNC3(dev, "failed to load firmware: %s, error: %i\n",
			gphy_fw->fw_name, ret);
		return ret;
	}

	/* GPHY cores need the firmware code in a persistent and contiguous
	 * memory area with a 16 kB boundary aligned start address.
	 */
	size = fw->size + XRX200_GPHY_FW_ALIGN;

	fw_addr = FUNC4(dev, size, &dma_addr, GFP_KERNEL);
	if (fw_addr) {
		fw_addr = FUNC1(fw_addr, XRX200_GPHY_FW_ALIGN);
		dev_addr = FUNC0(dma_addr, XRX200_GPHY_FW_ALIGN);
		FUNC5(fw_addr, fw->data, fw->size);
	} else {
		FUNC3(dev, "failed to alloc firmware memory\n");
		FUNC7(fw);
		return -ENOMEM;
	}

	FUNC7(fw);

	ret = FUNC6(priv->rcu_regmap, gphy_fw->fw_addr_offset, dev_addr);
	if (ret)
		return ret;

	FUNC10(gphy_fw->reset);

	return ret;
}