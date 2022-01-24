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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct it913x_dev {struct dvb_frontend* fe; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tuner_ops; } ;
struct dvb_frontend {int /*<<< orphan*/ * tuner_priv; TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct it913x_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct it913x_dev* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct it913x_dev *dev = FUNC3(pdev);
	struct dvb_frontend *fe = dev->fe;

	FUNC0(&pdev->dev, "\n");

	FUNC2(&fe->ops.tuner_ops, 0, sizeof(struct dvb_tuner_ops));
	fe->tuner_priv = NULL;
	FUNC1(dev);

	return 0;
}