#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct dvb_frontend* fe; } ;
struct m88rs6000t_dev {TYPE_1__ cfg; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  tuner_ops; } ;
struct dvb_frontend {int /*<<< orphan*/ * tuner_priv; TYPE_2__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct m88rs6000t_dev* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct m88rs6000t_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct m88rs6000t_dev *dev = FUNC1(client);
	struct dvb_frontend *fe = dev->cfg.fe;

	FUNC0(&client->dev, "\n");

	FUNC3(&fe->ops.tuner_ops, 0, sizeof(struct dvb_tuner_ops));
	fe->tuner_priv = NULL;
	FUNC2(dev);

	return 0;
}