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
typedef  size_t u8 ;
typedef  size_t u32 ;
struct ddb_link {int /*<<< orphan*/  flash_mutex; } ;
struct ddb {struct ddb_link* link; } ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 size_t SPI_CONTROL ; 
 size_t SPI_DATA ; 
 size_t FUNC1 (struct ddb*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct ddb*,int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct ddb*,size_t,int) ; 
 size_t FUNC6 (size_t) ; 

__attribute__((used)) static int FUNC7(struct ddb *dev, u32 lnr, u8 *wbuf, u32 wlen, u8 *rbuf,
		   u32 rlen)
{
	u32 data, shift;
	u32 tag = FUNC0(lnr);
	struct ddb_link *link = &dev->link[lnr];

	FUNC3(&link->flash_mutex);
	if (wlen > 4)
		FUNC2(dev, 1, tag | SPI_CONTROL);
	while (wlen > 4) {
		/* FIXME: check for big-endian */
		data = FUNC6(*(u32 *)wbuf);
		wbuf += 4;
		wlen -= 4;
		FUNC2(dev, data, tag | SPI_DATA);
		if (FUNC5(dev, tag | SPI_CONTROL, 4))
			goto fail;
	}
	if (rlen)
		FUNC2(dev, 0x0001 | ((wlen << (8 + 3)) & 0x1f00),
			  tag | SPI_CONTROL);
	else
		FUNC2(dev, 0x0003 | ((wlen << (8 + 3)) & 0x1f00),
			  tag | SPI_CONTROL);

	data = 0;
	shift = ((4 - wlen) * 8);
	while (wlen) {
		data <<= 8;
		data |= *wbuf;
		wlen--;
		wbuf++;
	}
	if (shift)
		data <<= shift;
	FUNC2(dev, data, tag | SPI_DATA);
	if (FUNC5(dev, tag | SPI_CONTROL, 4))
		goto fail;

	if (!rlen) {
		FUNC2(dev, 0, tag | SPI_CONTROL);
		goto exit;
	}
	if (rlen > 4)
		FUNC2(dev, 1, tag | SPI_CONTROL);

	while (rlen > 4) {
		FUNC2(dev, 0xffffffff, tag | SPI_DATA);
		if (FUNC5(dev, tag | SPI_CONTROL, 4))
			goto fail;
		data = FUNC1(dev, tag | SPI_DATA);
		*(u32 *)rbuf = FUNC6(data);
		rbuf += 4;
		rlen -= 4;
	}
	FUNC2(dev, 0x0003 | ((rlen << (8 + 3)) & 0x1F00),
		  tag | SPI_CONTROL);
	FUNC2(dev, 0xffffffff, tag | SPI_DATA);
	if (FUNC5(dev, tag | SPI_CONTROL, 4))
		goto fail;

	data = FUNC1(dev, tag | SPI_DATA);
	FUNC2(dev, 0, tag | SPI_CONTROL);

	if (rlen < 4)
		data <<= ((4 - rlen) * 8);

	while (rlen > 0) {
		*rbuf = ((data >> 24) & 0xff);
		data <<= 8;
		rbuf++;
		rlen--;
	}
exit:
	FUNC4(&link->flash_mutex);
	return 0;
fail:
	FUNC4(&link->flash_mutex);
	return -1;
}