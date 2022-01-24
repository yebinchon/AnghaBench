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
struct sun6i_csi_dev {struct regmap* regmap; } ;
struct sun6i_csi {int dummy; } ;
struct regmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSI_CAP_CH0_VCAP_ON ; 
 int /*<<< orphan*/  CSI_CAP_REG ; 
 int CSI_CH_INT_EN_CD_INT_EN ; 
 int CSI_CH_INT_EN_FD_INT_EN ; 
 int CSI_CH_INT_EN_FIFO0_OF_INT_EN ; 
 int CSI_CH_INT_EN_FIFO1_OF_INT_EN ; 
 int CSI_CH_INT_EN_FIFO2_OF_INT_EN ; 
 int CSI_CH_INT_EN_HB_OF_INT_EN ; 
 int /*<<< orphan*/  CSI_CH_INT_EN_REG ; 
 int /*<<< orphan*/  CSI_CH_INT_STA_REG ; 
 int /*<<< orphan*/  FUNC0 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,int /*<<< orphan*/ ,int) ; 
 struct sun6i_csi_dev* FUNC2 (struct sun6i_csi*) ; 

void FUNC3(struct sun6i_csi *csi, bool enable)
{
	struct sun6i_csi_dev *sdev = FUNC2(csi);
	struct regmap *regmap = sdev->regmap;

	if (!enable) {
		FUNC0(regmap, CSI_CAP_REG, CSI_CAP_CH0_VCAP_ON, 0);
		FUNC1(regmap, CSI_CH_INT_EN_REG, 0);
		return;
	}

	FUNC1(regmap, CSI_CH_INT_STA_REG, 0xFF);
	FUNC1(regmap, CSI_CH_INT_EN_REG,
		     CSI_CH_INT_EN_HB_OF_INT_EN |
		     CSI_CH_INT_EN_FIFO2_OF_INT_EN |
		     CSI_CH_INT_EN_FIFO1_OF_INT_EN |
		     CSI_CH_INT_EN_FIFO0_OF_INT_EN |
		     CSI_CH_INT_EN_FD_INT_EN |
		     CSI_CH_INT_EN_CD_INT_EN);

	FUNC0(regmap, CSI_CAP_REG, CSI_CAP_CH0_VCAP_ON,
			   CSI_CAP_CH0_VCAP_ON);
}