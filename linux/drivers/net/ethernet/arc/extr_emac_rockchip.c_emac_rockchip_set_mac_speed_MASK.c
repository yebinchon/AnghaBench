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
typedef  int u32 ;
struct rockchip_priv_data {TYPE_1__* soc_data; int /*<<< orphan*/  grf; } ;
struct TYPE_2__ {int grf_speed_offset; int /*<<< orphan*/  grf_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(void *priv, unsigned int speed)
{
	struct rockchip_priv_data *emac = priv;
	u32 speed_offset = emac->soc_data->grf_speed_offset;
	u32 data;
	int err = 0;

	switch (speed) {
	case 10:
		data = (1 << (speed_offset + 16)) | (0 << speed_offset);
		break;
	case 100:
		data = (1 << (speed_offset + 16)) | (1 << speed_offset);
		break;
	default:
		FUNC0("speed %u not supported\n", speed);
		return;
	}

	err = FUNC1(emac->grf, emac->soc_data->grf_offset, data);
	if (err)
		FUNC0("unable to apply speed %u to grf (%d)\n", speed, err);
}