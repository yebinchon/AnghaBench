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
struct zd1301_demod_dev {struct platform_device* pdev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct dvb_frontend {struct zd1301_demod_dev* demodulator_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int zd1301_demod_gain ; 
 int FUNC1 (struct zd1301_demod_dev*,int,int) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe)
{
	struct zd1301_demod_dev *dev = fe->demodulator_priv;
	struct platform_device *pdev = dev->pdev;
	int ret;

	FUNC0(&pdev->dev, "\n");

	ret = FUNC1(dev, 0x6840, 0x26);
	if (ret)
		goto err;
	ret = FUNC1(dev, 0x68e0, 0xff);
	if (ret)
		goto err;
	ret = FUNC1(dev, 0x68e2, 0xd8);
	if (ret)
		goto err;
	ret = FUNC1(dev, 0x6849, 0x4e);
	if (ret)
		goto err;
	ret = FUNC1(dev, 0x684e, 0x01);
	if (ret)
		goto err;
	ret = FUNC1(dev, 0x6a43, zd1301_demod_gain);
	if (ret)
		goto err;

	return 0;
err:
	FUNC0(&pdev->dev, "failed=%d\n", ret);
	return ret;
}