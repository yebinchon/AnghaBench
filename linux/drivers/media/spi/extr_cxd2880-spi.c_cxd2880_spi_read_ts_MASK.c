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
typedef  int u8 ;
typedef  int u32 ;
struct spi_transfer {int len; int* tx_buf; int* rx_buf; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_message*) ; 
 int FUNC3 (struct spi_device*,struct spi_message*) ; 

__attribute__((used)) static int FUNC4(struct spi_device *spi,
			       u8 *read_data,
			       u32 packet_num)
{
	int ret;
	u8 data[3];
	struct spi_message message;
	struct spi_transfer transfer[2] = {};

	if (!spi || !read_data || !packet_num) {
		FUNC0("invalid arg\n");
		return -EINVAL;
	}
	if (packet_num > 0xffff) {
		FUNC0("packet num > 0xffff\n");
		return -EINVAL;
	}

	data[0] = 0x10;
	data[1] = packet_num >> 8;
	data[2] = packet_num;

	FUNC2(&message);

	transfer[0].len = 3;
	transfer[0].tx_buf = data;
	FUNC1(&transfer[0], &message);
	transfer[1].len = packet_num * 188;
	transfer[1].rx_buf = read_data;
	FUNC1(&transfer[1], &message);

	ret = FUNC3(spi, &message);
	if (ret)
		FUNC0("spi_write_then_read failed\n");

	return ret;
}