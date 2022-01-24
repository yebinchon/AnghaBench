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
typedef  int u16 ;
struct dvb_usb_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct dvb_usb_adapter *adap)
{
	int ret;
	u8 req;
	u16 value;
	u16 index;
	int blen;

	/* reset demodulator */
	req = 0xC0;
	value = 1; /* high */
	index = 3;
	blen = 0;

	ret = FUNC0(adap->dev, req, value, index, NULL, blen);
	if (ret != 0)
		return -EIO;

	req = 0xC0;
	value = 0; /* low */
	index = 3;
	blen = 0;
	FUNC1(200);

	ret = FUNC0(adap->dev, req, value, index, NULL, blen);
	if (ret != 0)
		return -EIO;

	FUNC1(200);

	req = 0xC0;
	value = 1; /*high */
	index = 3;
	blen = 0;

	ret = FUNC0(adap->dev, req, value, index, NULL, blen);
	if (ret != 0)
		return -EIO;

	FUNC1(200);
	return 0;
}