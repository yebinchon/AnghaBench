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
struct mmc_host {int dummy; } ;
struct TYPE_2__ {struct device_type* type; int /*<<< orphan*/  release; int /*<<< orphan*/ * bus; int /*<<< orphan*/  parent; } ;
struct mmc_card {TYPE_1__ dev; struct mmc_host* host; } ;
struct device_type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct mmc_card* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct mmc_card* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmc_bus_type ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  mmc_release_card ; 

struct mmc_card *FUNC4(struct mmc_host *host, struct device_type *type)
{
	struct mmc_card *card;

	card = FUNC2(sizeof(struct mmc_card), GFP_KERNEL);
	if (!card)
		return FUNC0(-ENOMEM);

	card->host = host;

	FUNC1(&card->dev);

	card->dev.parent = FUNC3(host);
	card->dev.bus = &mmc_bus_type;
	card->dev.release = mmc_release_card;
	card->dev.type = type;

	return card;
}