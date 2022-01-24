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
struct netup_ci_state {int /*<<< orphan*/  ca; int /*<<< orphan*/  ci_i2c_addr; int /*<<< orphan*/  i2c_adap; } ;
struct dvb_ca_en50221 {struct netup_ci_state* data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(struct dvb_ca_en50221 *en50221, int slot)
{
	struct netup_ci_state *state = en50221->data;
	u8 buf =  0x80;
	int ret;

	if (0 != slot)
		return -EINVAL;

	FUNC3(500);
	ret = FUNC2(state->i2c_adap, state->ci_i2c_addr,
							0, &buf, 1);

	if (ret != 0)
		return ret;

	FUNC3(500);

	buf = 0x00;
	ret = FUNC2(state->i2c_adap, state->ci_i2c_addr,
							0, &buf, 1);

	FUNC1(1000);
	FUNC0(&state->ca, 0);

	return 0;

}