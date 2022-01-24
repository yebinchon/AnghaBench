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
struct pcan_pccard {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int FUNC1 (struct pcan_pccard*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct pcan_pccard *card, int onoff)
{
	int err;

	err = FUNC1(card, 0, !!onoff);
	if (err)
		FUNC0(&card->pdev->dev,
			"failed setting power %s to can connectors (err %d)\n",
			(onoff) ? "on" : "off", err);
}