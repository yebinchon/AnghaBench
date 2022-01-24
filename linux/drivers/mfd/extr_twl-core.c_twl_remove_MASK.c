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
struct twl_client {struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int ready; struct twl_client* twl_modules; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_client*) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 unsigned int FUNC4 () ; 
 TYPE_1__* twl_priv ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	unsigned i, num_slaves;
	int status;

	if (FUNC3())
		status = FUNC1();
	else
		status = FUNC2();

	if (status < 0)
		return status;

	num_slaves = FUNC4();
	for (i = 0; i < num_slaves; i++) {
		struct twl_client	*twl = &twl_priv->twl_modules[i];

		if (twl->client && twl->client != client)
			FUNC0(twl->client);
		twl->client = NULL;
	}
	twl_priv->ready = false;
	return 0;
}