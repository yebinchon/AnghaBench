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
struct v4l2_fwnode_endpoint {int nr_of_link_frequencies; int /*<<< orphan*/ * link_frequencies; int /*<<< orphan*/  bus_type; } ;
struct imx319_hwcfg {scalar_t__ ext_clk; int nr_of_link_freqs; int /*<<< orphan*/ * link_freqs; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IMX319_EXT_CLK ; 
 int /*<<< orphan*/  V4L2_MBUS_CSI2_DPHY ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 struct fwnode_handle* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 struct imx319_hwcfg* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct fwnode_handle* FUNC6 (struct fwnode_handle*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct fwnode_handle*) ; 
 int FUNC8 (struct fwnode_handle*,char*,scalar_t__*) ; 
 int FUNC9 (struct fwnode_handle*,struct v4l2_fwnode_endpoint*) ; 
 int /*<<< orphan*/  FUNC10 (struct v4l2_fwnode_endpoint*) ; 

__attribute__((used)) static struct imx319_hwcfg *FUNC11(struct device *dev)
{
	struct imx319_hwcfg *cfg;
	struct v4l2_fwnode_endpoint bus_cfg = {
		.bus_type = V4L2_MBUS_CSI2_DPHY
	};
	struct fwnode_handle *ep;
	struct fwnode_handle *fwnode = FUNC2(dev);
	unsigned int i;
	int ret;

	if (!fwnode)
		return NULL;

	ep = FUNC6(fwnode, NULL);
	if (!ep)
		return NULL;

	ret = FUNC9(ep, &bus_cfg);
	if (ret)
		goto out_err;

	cfg = FUNC5(dev, sizeof(*cfg), GFP_KERNEL);
	if (!cfg)
		goto out_err;

	ret = FUNC8(FUNC2(dev), "clock-frequency",
				       &cfg->ext_clk);
	if (ret) {
		FUNC1(dev, "can't get clock frequency");
		goto out_err;
	}

	FUNC0(dev, "ext clk: %d", cfg->ext_clk);
	if (cfg->ext_clk != IMX319_EXT_CLK) {
		FUNC1(dev, "external clock %d is not supported",
			cfg->ext_clk);
		goto out_err;
	}

	FUNC0(dev, "num of link freqs: %d", bus_cfg.nr_of_link_frequencies);
	if (!bus_cfg.nr_of_link_frequencies) {
		FUNC3(dev, "no link frequencies defined");
		goto out_err;
	}

	cfg->nr_of_link_freqs = bus_cfg.nr_of_link_frequencies;
	cfg->link_freqs = FUNC4(dev,
				       bus_cfg.nr_of_link_frequencies + 1,
				       sizeof(*cfg->link_freqs), GFP_KERNEL);
	if (!cfg->link_freqs)
		goto out_err;

	for (i = 0; i < bus_cfg.nr_of_link_frequencies; i++) {
		cfg->link_freqs[i] = bus_cfg.link_frequencies[i];
		FUNC0(dev, "link_freq[%d] = %lld", i, cfg->link_freqs[i]);
	}

	FUNC10(&bus_cfg);
	FUNC7(ep);
	return cfg;

out_err:
	FUNC10(&bus_cfg);
	FUNC7(ep);
	return NULL;
}