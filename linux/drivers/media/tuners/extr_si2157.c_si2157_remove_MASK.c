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
struct si2157_dev {int /*<<< orphan*/  ent; scalar_t__ mdev; int /*<<< orphan*/  stat_work; struct dvb_frontend* fe; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tuner_ops; } ;
struct dvb_frontend {int /*<<< orphan*/ * tuner_priv; TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct si2157_dev* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct si2157_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct si2157_dev *dev = FUNC2(client);
	struct dvb_frontend *fe = dev->fe;

	FUNC1(&client->dev, "\n");

	/* stop statistics polling */
	FUNC0(&dev->stat_work);

#ifdef CONFIG_MEDIA_CONTROLLER_DVB
	if (dev->mdev)
		media_device_unregister_entity(&dev->ent);
#endif

	FUNC5(&fe->ops.tuner_ops, 0, sizeof(struct dvb_tuner_ops));
	fe->tuner_priv = NULL;
	FUNC3(dev);

	return 0;
}