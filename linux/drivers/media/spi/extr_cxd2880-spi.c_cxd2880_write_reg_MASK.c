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
struct spi_device {int dummy; } ;

/* Variables and functions */
 int BURST_WRITE_MAX ; 
 int EINVAL ; 
 int U8_MAX ; 
 int FUNC0 (struct spi_device*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int FUNC3(struct spi_device *spi,
			     u8 sub_address, const u8 *data, u32 size)
{
	u8 send_data[BURST_WRITE_MAX + 4];
	const u8 *write_data_top = NULL;
	int ret = 0;

	if (!spi || !data) {
		FUNC2("invalid arg\n");
		return -EINVAL;
	}
	if (size > BURST_WRITE_MAX || size > U8_MAX) {
		FUNC2("data size > WRITE_MAX\n");
		return -EINVAL;
	}

	if (sub_address + size > 0x100) {
		FUNC2("out of range\n");
		return -EINVAL;
	}

	send_data[0] = 0x0e;
	write_data_top = data;

	send_data[1] = sub_address;
	send_data[2] = (u8)size;

	FUNC1(&send_data[3], write_data_top, send_data[2]);

	ret = FUNC0(spi, send_data, send_data[2] + 3);
	if (ret)
		FUNC2("write spi failed %d\n", ret);

	return ret;
}