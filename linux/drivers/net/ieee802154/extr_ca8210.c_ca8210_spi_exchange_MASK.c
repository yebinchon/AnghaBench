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
typedef  int u8 ;
struct TYPE_3__ {struct ca8210_priv* driver_data; } ;
struct spi_device {TYPE_1__ dev; } ;
struct ca8210_priv {int* sync_command_response; int /*<<< orphan*/  sync_exchange_complete; int /*<<< orphan*/  spi_transfer_complete; int /*<<< orphan*/  spi; } ;

/* Variables and functions */
 int CA8210_SYNC_TIMEOUT ; 
 int EBUSY ; 
 long ERESTARTSYS ; 
 int ETIME ; 
 int const SPI_SYN ; 
 int FUNC0 (int /*<<< orphan*/ ,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 long FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(
	const u8 *buf,
	size_t len,
	u8 *response,
	void *device_ref
)
{
	int status = 0;
	struct spi_device *spi = device_ref;
	struct ca8210_priv *priv = spi->dev.driver_data;
	long wait_remaining;

	if ((buf[0] & SPI_SYN) && response) { /* if sync wait for confirm */
		FUNC5(&priv->sync_exchange_complete);
		priv->sync_command_response = response;
	}

	do {
		FUNC5(&priv->spi_transfer_complete);
		status = FUNC0(priv->spi, buf, len);
		if (status) {
			FUNC3(
				&spi->dev,
				"spi write failed, returned %d\n",
				status
			);
			if (status == -EBUSY)
				continue;
			if (((buf[0] & SPI_SYN) && response))
				FUNC1(&priv->sync_exchange_complete);
			goto cleanup;
		}

		wait_remaining = FUNC6(
			&priv->spi_transfer_complete,
			FUNC4(1000)
		);
		if (wait_remaining == -ERESTARTSYS) {
			status = -ERESTARTSYS;
		} else if (wait_remaining == 0) {
			FUNC2(
				&spi->dev,
				"SPI downstream transfer timed out!\n"
			);
			status = -ETIME;
			goto cleanup;
		}
	} while (status < 0);

	if (!((buf[0] & SPI_SYN) && response))
		goto cleanup;

	wait_remaining = FUNC6(
		&priv->sync_exchange_complete,
		FUNC4(CA8210_SYNC_TIMEOUT)
	);
	if (wait_remaining == -ERESTARTSYS) {
		status = -ERESTARTSYS;
	} else if (wait_remaining == 0) {
		FUNC2(
			&spi->dev,
			"Synchronous confirm timeout\n"
		);
		status = -ETIME;
	}

cleanup:
	priv->sync_command_response = NULL;
	return status;
}