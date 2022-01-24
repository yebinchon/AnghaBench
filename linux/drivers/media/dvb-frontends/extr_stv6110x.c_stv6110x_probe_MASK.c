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
struct stv6110x_state {TYPE_1__* i2c; int /*<<< orphan*/ * devctl; struct stv6110x_config* config; int /*<<< orphan*/  frontend; } ;
struct stv6110x_config {int /*<<< orphan*/  get_devctl; int /*<<< orphan*/  frontend; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_4__ {struct stv6110x_config* platform_data; } ;
struct i2c_client {TYPE_1__* adapter; TYPE_2__ dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,struct stv6110x_state*) ; 
 struct stv6110x_state* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct stv6110x_state*) ; 
 int /*<<< orphan*/  stv6110x_ctl ; 
 int /*<<< orphan*/  stv6110x_get_devctl ; 
 int /*<<< orphan*/  FUNC4 (struct stv6110x_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct stv6110x_state*) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	struct stv6110x_config *config = client->dev.platform_data;

	struct stv6110x_state *stv6110x;

	stv6110x = FUNC2(sizeof(*stv6110x), GFP_KERNEL);
	if (!stv6110x)
		return -ENOMEM;

	stv6110x->frontend	= config->frontend;
	stv6110x->i2c		= client->adapter;
	stv6110x->config	= config;
	stv6110x->devctl	= &stv6110x_ctl;

	FUNC3(stv6110x);
	FUNC5(stv6110x);
	FUNC4(stv6110x);

	FUNC0(&stv6110x->i2c->dev, "Probed STV6110x\n");

	FUNC1(client, stv6110x);

	/* setup callbacks */
	config->get_devctl = stv6110x_get_devctl;

	return 0;
}