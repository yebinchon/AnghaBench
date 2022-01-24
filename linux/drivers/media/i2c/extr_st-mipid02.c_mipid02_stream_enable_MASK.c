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
struct TYPE_2__ {int clk_lane_reg1; int data_lane0_reg1; int data_lane1_reg1; int mode_reg1; int mode_reg2; int data_id_rreg; int data_selection_ctrl; int pix_width_ctrl; int pix_width_ctrl_emb; } ;
struct mipid02_dev {TYPE_1__ r; int /*<<< orphan*/  s_subdev; struct i2c_client* i2c_client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CLK_MIPI_CSI ; 
 int DATA_MIPI_CSI ; 
 int EINVAL ; 
 int /*<<< orphan*/  MIPID02_CLK_LANE_REG1 ; 
 int /*<<< orphan*/  MIPID02_CLK_LANE_REG3 ; 
 int /*<<< orphan*/  MIPID02_DATA_ID_RREG ; 
 int /*<<< orphan*/  MIPID02_DATA_LANE0_REG1 ; 
 int /*<<< orphan*/  MIPID02_DATA_LANE0_REG2 ; 
 int /*<<< orphan*/  MIPID02_DATA_LANE1_REG1 ; 
 int /*<<< orphan*/  MIPID02_DATA_LANE1_REG2 ; 
 int /*<<< orphan*/  MIPID02_DATA_SELECTION_CTRL ; 
 int /*<<< orphan*/  MIPID02_MODE_REG1 ; 
 int /*<<< orphan*/  MIPID02_MODE_REG2 ; 
 int /*<<< orphan*/  MIPID02_PIX_WIDTH_CTRL ; 
 int /*<<< orphan*/  MIPID02_PIX_WIDTH_CTRL_EMB ; 
 int MODE_NO_BYPASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct mipid02_dev*) ; 
 int FUNC3 (struct mipid02_dev*) ; 
 int FUNC4 (struct mipid02_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mipid02_dev*) ; 
 int FUNC6 (struct mipid02_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct mipid02_dev *bridge)
{
	struct i2c_client *client = bridge->i2c_client;
	int ret = -EINVAL;

	if (!bridge->s_subdev)
		goto error;

	FUNC1(&bridge->r, 0, sizeof(bridge->r));
	/* build registers content */
	ret = FUNC3(bridge);
	if (ret)
		goto error;
	ret = FUNC4(bridge);
	if (ret)
		goto error;
	ret = FUNC2(bridge);
	if (ret)
		goto error;

	/* write mipi registers */
	ret = FUNC6(bridge, MIPID02_CLK_LANE_REG1,
		bridge->r.clk_lane_reg1);
	if (ret)
		goto error;
	ret = FUNC6(bridge, MIPID02_CLK_LANE_REG3, CLK_MIPI_CSI);
	if (ret)
		goto error;
	ret = FUNC6(bridge, MIPID02_DATA_LANE0_REG1,
		bridge->r.data_lane0_reg1);
	if (ret)
		goto error;
	ret = FUNC6(bridge, MIPID02_DATA_LANE0_REG2,
		DATA_MIPI_CSI);
	if (ret)
		goto error;
	ret = FUNC6(bridge, MIPID02_DATA_LANE1_REG1,
		bridge->r.data_lane1_reg1);
	if (ret)
		goto error;
	ret = FUNC6(bridge, MIPID02_DATA_LANE1_REG2,
		DATA_MIPI_CSI);
	if (ret)
		goto error;
	ret = FUNC6(bridge, MIPID02_MODE_REG1,
		MODE_NO_BYPASS | bridge->r.mode_reg1);
	if (ret)
		goto error;
	ret = FUNC6(bridge, MIPID02_MODE_REG2,
		bridge->r.mode_reg2);
	if (ret)
		goto error;
	ret = FUNC6(bridge, MIPID02_DATA_ID_RREG,
		bridge->r.data_id_rreg);
	if (ret)
		goto error;
	ret = FUNC6(bridge, MIPID02_DATA_SELECTION_CTRL,
		bridge->r.data_selection_ctrl);
	if (ret)
		goto error;
	ret = FUNC6(bridge, MIPID02_PIX_WIDTH_CTRL,
		bridge->r.pix_width_ctrl);
	if (ret)
		goto error;
	ret = FUNC6(bridge, MIPID02_PIX_WIDTH_CTRL_EMB,
		bridge->r.pix_width_ctrl_emb);
	if (ret)
		goto error;

	return 0;

error:
	FUNC0(&client->dev, "failed to stream on %d", ret);
	FUNC5(bridge);

	return ret;
}