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
struct spi_device {int dummy; } ;
struct cxd2880_ts_buf_info {int read_ready; int almost_full; int almost_empty; int overflow; int underflow; int pkt_num; } ;
typedef  int /*<<< orphan*/  recv_data ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct spi_device*,int*,int,int*,int) ; 

__attribute__((used)) static int FUNC2(struct spi_device *spi,
					   struct cxd2880_ts_buf_info *info)
{
	u8 send_data = 0x20;
	u8 recv_data[2];
	int ret;

	if (!spi || !info) {
		FUNC0("invalid arg\n");
		return -EINVAL;
	}

	ret = FUNC1(spi, &send_data, 1,
				  recv_data, sizeof(recv_data));
	if (ret)
		FUNC0("spi_write_then_read failed\n");

	info->read_ready = (recv_data[0] & 0x80) ? 1 : 0;
	info->almost_full = (recv_data[0] & 0x40) ? 1 : 0;
	info->almost_empty = (recv_data[0] & 0x20) ? 1 : 0;
	info->overflow = (recv_data[0] & 0x10) ? 1 : 0;
	info->underflow = (recv_data[0] & 0x08) ? 1 : 0;
	info->pkt_num = ((recv_data[0] & 0x07) << 8) | recv_data[1];

	return ret;
}