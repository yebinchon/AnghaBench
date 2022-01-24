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
struct stv6110x_state {int /*<<< orphan*/  frontend; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct stv6110x_state* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client)
{
	struct stv6110x_state *stv6110x = FUNC0(client);

	FUNC1(stv6110x->frontend);
	return 0;
}