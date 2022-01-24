#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sja1105_reset_cmd {scalar_t__ cold_rst; scalar_t__ warm_rst; scalar_t__ por_rst; scalar_t__ otp_rst; scalar_t__ car_rst; scalar_t__ cfg_rst; scalar_t__ switch_rst; } ;
struct sja1105_regs {int /*<<< orphan*/  rgu; } ;
struct sja1105_private {TYPE_2__* ds; TYPE_1__* info; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device* dev; } ;
struct TYPE_3__ {struct sja1105_regs* regs; } ;

/* Variables and functions */
 int EINVAL ; 
 int SJA1105_SIZE_RESET_CMD ; 
 int /*<<< orphan*/  SPI_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (struct sja1105_private const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sja1105_reset_cmd const*) ; 

__attribute__((used)) static int FUNC4(const void *ctx, const void *data)
{
	const struct sja1105_private *priv = ctx;
	const struct sja1105_reset_cmd *reset = data;
	const struct sja1105_regs *regs = priv->info->regs;
	struct device *dev = priv->ds->dev;
	u8 packed_buf[SJA1105_SIZE_RESET_CMD];

	if (reset->switch_rst ||
	    reset->cfg_rst ||
	    reset->car_rst ||
	    reset->otp_rst ||
	    reset->por_rst) {
		FUNC1(dev, "Only warm and cold reset is supported "
			"for SJA1105 E/T!\n");
		return -EINVAL;
	}

	if (reset->warm_rst)
		FUNC0(dev, "Warm reset requested\n");
	if (reset->cold_rst)
		FUNC0(dev, "Cold reset requested\n");

	FUNC3(packed_buf, reset);

	return FUNC2(priv, SPI_WRITE, regs->rgu,
					   packed_buf, SJA1105_SIZE_RESET_CMD);
}