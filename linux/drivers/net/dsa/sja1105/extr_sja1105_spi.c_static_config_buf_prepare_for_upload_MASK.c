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
struct sja1105_table_header {int /*<<< orphan*/  crc; } ;
struct sja1105_static_config {int dummy; } ;
struct sja1105_private {TYPE_1__* spidev; struct sja1105_static_config static_config; } ;
typedef  size_t sja1105_config_valid_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PACK ; 
 size_t SJA1105_CONFIG_OK ; 
 void* SJA1105_SIZE_TABLE_HEADER ; 
 int /*<<< orphan*/  UNPACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 size_t FUNC2 (struct sja1105_static_config*) ; 
 int /*<<< orphan*/ * sja1105_static_config_error_msg ; 
 int /*<<< orphan*/  FUNC3 (void*,struct sja1105_static_config*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct sja1105_table_header*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct sja1105_private *priv,
				     void *config_buf, int buf_len)
{
	struct sja1105_static_config *config = &priv->static_config;
	struct sja1105_table_header final_header;
	sja1105_config_valid_t valid;
	char *final_header_ptr;
	int crc_len;

	valid = FUNC2(config);
	if (valid != SJA1105_CONFIG_OK) {
		FUNC0(&priv->spidev->dev,
			sja1105_static_config_error_msg[valid]);
		return -EINVAL;
	}

	/* Write Device ID and config tables to config_buf */
	FUNC3(config_buf, config);
	/* Recalculate CRC of the last header (right now 0xDEADBEEF).
	 * Don't include the CRC field itself.
	 */
	crc_len = buf_len - 4;
	/* Read the whole table header */
	final_header_ptr = config_buf + buf_len - SJA1105_SIZE_TABLE_HEADER;
	FUNC4(final_header_ptr, &final_header, UNPACK);
	/* Modify */
	final_header.crc = FUNC1(config_buf, crc_len);
	/* Rewrite */
	FUNC4(final_header_ptr, &final_header, PACK);

	return 0;
}