#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct channel_info {TYPE_3__* i2c_client; int /*<<< orphan*/  i2c_adapter; scalar_t__ frontend; } ;
struct c8sectpfei {int tsin_count; struct channel_info** channel_data; } ;
struct c8sectpfe {int dummy; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct c8sectpfe*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct c8sectpfe *c8sectpfe,
					struct c8sectpfei *fei)
{
	int n;
	struct channel_info *tsin;

	for (n = 0; n < fei->tsin_count; n++) {

		tsin = fei->channel_data[n];

		if (tsin) {
			if (tsin->frontend) {
				FUNC2(tsin->frontend);
				FUNC1(tsin->frontend);
			}

			FUNC3(tsin->i2c_adapter);

			if (tsin->i2c_client) {
				FUNC5(tsin->i2c_client->dev.driver->owner);
				FUNC4(tsin->i2c_client);
			}
		}
	}

	FUNC0(c8sectpfe);
}