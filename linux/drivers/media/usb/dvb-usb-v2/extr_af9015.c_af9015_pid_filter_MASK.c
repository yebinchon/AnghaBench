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
typedef  int /*<<< orphan*/  u16 ;
struct dvb_usb_adapter {size_t id; int /*<<< orphan*/ * fe; } ;
struct af9015_state {int /*<<< orphan*/  fe_mutex; struct af9013_platform_data* af9013_pdata; } ;
struct af9013_platform_data {int (* pid_filter ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 struct af9015_state* FUNC0 (struct dvb_usb_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct dvb_usb_adapter *adap, int index,
			     u16 pid, int onoff)
{
	struct af9015_state *state = FUNC0(adap);
	struct af9013_platform_data *pdata = &state->af9013_pdata[adap->id];
	int ret;

	FUNC1(&state->fe_mutex);
	ret = pdata->pid_filter(adap->fe[0], index, pid, onoff);
	FUNC2(&state->fe_mutex);

	return ret;
}