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
struct si476x_core {TYPE_1__* client; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct regmap* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct si476x_core*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  si476x_regmap_config ; 

struct regmap *FUNC1(struct si476x_core *core)
{
	return FUNC0(&core->client->dev, NULL,
				core, &si476x_regmap_config);
}