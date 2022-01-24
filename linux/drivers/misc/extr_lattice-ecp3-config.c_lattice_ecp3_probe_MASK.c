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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct fpga_data {int /*<<< orphan*/  fw_loaded; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FIRMWARE_NAME ; 
 int /*<<< orphan*/  FW_ACTION_HOTPLUG ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct fpga_data* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  firmware_load ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct spi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_device*,struct fpga_data*) ; 

__attribute__((used)) static int FUNC6(struct spi_device *spi)
{
	struct fpga_data *data;
	int err;

	data = FUNC2(&spi->dev, sizeof(*data), GFP_KERNEL);
	if (!data) {
		FUNC0(&spi->dev, "Memory allocation for fpga_data failed\n");
		return -ENOMEM;
	}
	FUNC5(spi, data);

	FUNC3(&data->fw_loaded);
	err = FUNC4(THIS_MODULE, FW_ACTION_HOTPLUG,
				      FIRMWARE_NAME, &spi->dev,
				      GFP_KERNEL, spi, firmware_load);
	if (err) {
		FUNC0(&spi->dev, "Firmware loading failed with %d!\n", err);
		return err;
	}

	FUNC1(&spi->dev, "FPGA bitstream configuration driver registered\n");

	return 0;
}