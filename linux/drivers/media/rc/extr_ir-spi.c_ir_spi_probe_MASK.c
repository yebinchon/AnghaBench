#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_9__ {int /*<<< orphan*/  of_node; } ;
struct spi_device {TYPE_2__ dev; } ;
struct ir_spi_data {TYPE_1__* rc; int /*<<< orphan*/  freq; int /*<<< orphan*/  negated; struct spi_device* spi; int /*<<< orphan*/  regulator; } ;
struct TYPE_8__ {char* device_name; struct ir_spi_data* priv; int /*<<< orphan*/  driver_name; int /*<<< orphan*/  (* s_tx_duty_cycle ) (TYPE_1__*,int) ;int /*<<< orphan*/  s_tx_carrier; int /*<<< orphan*/  tx_ir; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IR_SPI_DEFAULT_FREQUENCY ; 
 int /*<<< orphan*/  IR_SPI_DRIVER_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RC_DRIVER_IR_RAW_TX ; 
 struct ir_spi_data* FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  ir_spi_set_tx_carrier ; 
 int /*<<< orphan*/  ir_spi_tx ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int*) ; 

__attribute__((used)) static int FUNC9(struct spi_device *spi)
{
	int ret;
	u8 dc;
	struct ir_spi_data *idata;

	idata = FUNC2(&spi->dev, sizeof(*idata), GFP_KERNEL);
	if (!idata)
		return -ENOMEM;

	idata->regulator = FUNC5(&spi->dev, "irda_regulator");
	if (FUNC0(idata->regulator))
		return FUNC1(idata->regulator);

	idata->rc = FUNC3(&spi->dev, RC_DRIVER_IR_RAW_TX);
	if (!idata->rc)
		return -ENOMEM;

	idata->rc->tx_ir           = ir_spi_tx;
	idata->rc->s_tx_carrier    = ir_spi_set_tx_carrier;
	idata->rc->s_tx_duty_cycle = ir_spi_set_duty_cycle;
	idata->rc->device_name	   = "IR SPI";
	idata->rc->driver_name     = IR_SPI_DRIVER_NAME;
	idata->rc->priv            = idata;
	idata->spi                 = spi;

	idata->negated = FUNC7(spi->dev.of_node,
							"led-active-low");
	ret = FUNC8(spi->dev.of_node, "duty-cycle", &dc);
	if (ret)
		dc = 50;

	/* ir_spi_set_duty_cycle cannot fail,
	 * it returns int to be compatible with the
	 * rc->s_tx_duty_cycle function
	 */
	FUNC6(idata->rc, dc);

	idata->freq = IR_SPI_DEFAULT_FREQUENCY;

	return FUNC4(&spi->dev, idata->rc);
}