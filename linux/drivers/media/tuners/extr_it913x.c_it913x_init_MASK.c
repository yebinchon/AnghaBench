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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct it913x_dev {int role; unsigned int clk_mode; int xtal; int fdiv; unsigned int fn_min; int chip_ver; int active; int /*<<< orphan*/  regmap; struct platform_device* pdev; } ;
struct dvb_frontend {struct it913x_dev* tuner_priv; } ;

/* Variables and functions */
 unsigned int FUNC0 (int const*) ; 
 scalar_t__ TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 unsigned long FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,unsigned int*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

__attribute__((used)) static int FUNC11(struct dvb_frontend *fe)
{
	struct it913x_dev *dev = fe->tuner_priv;
	struct platform_device *pdev = dev->pdev;
	int ret;
	unsigned int utmp;
	u8 iqik_m_cal, nv_val, buf[2];
	static const u8 nv[] = {48, 32, 24, 16, 12, 8, 6, 4, 2};
	unsigned long timeout;

	FUNC1(&pdev->dev, "role %u\n", dev->role);

	ret = FUNC8(dev->regmap, 0x80ec4c, 0x68);
	if (ret)
		goto err;

	FUNC10(10000, 100000);

	ret = FUNC7(dev->regmap, 0x80ec86, &utmp);
	if (ret)
		goto err;

	switch (utmp) {
	case 0:
		/* 12.000 MHz */
		dev->clk_mode = utmp;
		dev->xtal = 2000;
		dev->fdiv = 3;
		iqik_m_cal = 16;
		break;
	case 1:
		/* 20.480 MHz */
		dev->clk_mode = utmp;
		dev->xtal = 640;
		dev->fdiv = 1;
		iqik_m_cal = 6;
		break;
	default:
		FUNC2(&pdev->dev, "unknown clock identifier %d\n", utmp);
		goto err;
	}

	ret = FUNC7(dev->regmap, 0x80ed03,  &utmp);
	if (ret)
		goto err;

	else if (utmp < FUNC0(nv))
		nv_val = nv[utmp];
	else
		nv_val = 2;

	#define TIMEOUT 50
	timeout = jiffies + FUNC4(TIMEOUT);
	while (!FUNC9(jiffies, timeout)) {
		ret = FUNC6(dev->regmap, 0x80ed23, buf, 2);
		if (ret)
			goto err;

		utmp = (buf[1] << 8) | (buf[0] << 0);
		if (utmp)
			break;
	}

	FUNC1(&pdev->dev, "r_fbc_m_bdry took %u ms, val %u\n",
			FUNC3(jiffies) -
			(FUNC3(timeout) - TIMEOUT), utmp);

	dev->fn_min = dev->xtal * utmp;
	dev->fn_min /= (dev->fdiv * nv_val);
	dev->fn_min *= 1000;
	FUNC1(&pdev->dev, "fn_min %u\n", dev->fn_min);

	/*
	 * Chip version BX never sets that flag so we just wait 50ms in that
	 * case. It is possible poll BX similarly than AX and then timeout in
	 * order to get 50ms delay, but that causes about 120 extra I2C
	 * messages. As for now, we just wait and reduce IO.
	 */
	if (dev->chip_ver == 1) {
		#define TIMEOUT 50
		timeout = jiffies + FUNC4(TIMEOUT);
		while (!FUNC9(jiffies, timeout)) {
			ret = FUNC7(dev->regmap, 0x80ec82, &utmp);
			if (ret)
				goto err;

			if (utmp)
				break;
		}

		FUNC1(&pdev->dev, "p_tsm_init_mode took %u ms, val %u\n",
				FUNC3(jiffies) -
				(FUNC3(timeout) - TIMEOUT), utmp);
	} else {
		FUNC5(50);
	}

	ret = FUNC8(dev->regmap, 0x80ed81, iqik_m_cal);
	if (ret)
		goto err;

	ret = FUNC8(dev->regmap, 0x80ec57, 0x00);
	if (ret)
		goto err;

	ret = FUNC8(dev->regmap, 0x80ec58, 0x00);
	if (ret)
		goto err;

	ret = FUNC8(dev->regmap, 0x80ec40, 0x01);
	if (ret)
		goto err;

	dev->active = true;

	return 0;
err:
	FUNC1(&pdev->dev, "failed %d\n", ret);
	return ret;
}