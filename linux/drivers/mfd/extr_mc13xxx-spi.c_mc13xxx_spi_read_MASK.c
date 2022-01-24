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
struct spi_transfer {unsigned char* tx_buf; unsigned char* rx_buf; int len; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_message*) ; 
 int FUNC3 (struct spi_device*,struct spi_message*) ; 
 struct spi_device* FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(void *context, const void *reg, size_t reg_size,
				void *val, size_t val_size)
{
	unsigned char w[4] = { *((unsigned char *) reg), 0, 0, 0};
	unsigned char r[4];
	unsigned char *p = val;
	struct device *dev = context;
	struct spi_device *spi = FUNC4(dev);
	struct spi_transfer t = {
		.tx_buf = w,
		.rx_buf = r,
		.len = 4,
	};

	struct spi_message m;
	int ret;

	if (val_size != 3 || reg_size != 1)
		return -ENOTSUPP;

	FUNC2(&m);
	FUNC1(&t, &m);
	ret = FUNC3(spi, &m);

	FUNC0(p, &r[1], 3);

	return ret;
}