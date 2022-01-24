#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  u32 ;
struct lan9303 {int /*<<< orphan*/  dev; } ;
struct dsa_switch {struct lan9303* priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* lan9303_mib ; 
 int FUNC2 (struct lan9303*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct dsa_switch *ds, int port,
				      uint64_t *data)
{
	struct lan9303 *chip = ds->priv;
	unsigned int u;

	for (u = 0; u < FUNC0(lan9303_mib); u++) {
		u32 reg;
		int ret;

		ret = FUNC2(
			chip, port, lan9303_mib[u].offset, &reg);

		if (ret)
			FUNC1(chip->dev, "Reading status port %d reg %u failed\n",
				 port, lan9303_mib[u].offset);
		data[u] = reg;
	}
}