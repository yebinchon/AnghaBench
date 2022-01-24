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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  temperature_table ;
struct ddb_link {int overtemperature_error; int /*<<< orphan*/  temp_lock; struct ddb* dev; TYPE_1__* info; int /*<<< orphan*/  temp_tab; int /*<<< orphan*/  nr; } ;
struct ddb {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  tempmon_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  TEMPMON_CONTROL ; 
 int TEMPMON_CONTROL_AUTOSCAN ; 
 int TEMPMON_CONTROL_INTENABLE ; 
 int TEMPMON_CONTROL_OVERTEMP ; 
 int /*<<< orphan*/  TEMPMON_FANCONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct ddb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ddb_link*) ; 
 int FUNC1 (struct ddb_link*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ddb_link*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  temp_handler ; 
 int /*<<< orphan*/  FUNC7 (struct ddb_link*) ; 

__attribute__((used)) static int FUNC8(struct ddb_link *link, int first_time)
{
	struct ddb *dev = link->dev;
	int status = 0;
	u32 l = link->nr;

	FUNC5(&link->temp_lock);
	if (first_time) {
		static u8 temperature_table[11] = {
			30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80 };

		FUNC4(link->temp_tab, temperature_table,
		       sizeof(temperature_table));
	}
	FUNC0(dev, l, link->info->tempmon_irq, temp_handler, link);
	FUNC2(link, (TEMPMON_CONTROL_OVERTEMP | TEMPMON_CONTROL_AUTOSCAN |
			  TEMPMON_CONTROL_INTENABLE),
		   TEMPMON_CONTROL);
	FUNC2(link, (3 << 8), TEMPMON_FANCONTROL);

	link->overtemperature_error =
		((FUNC1(link, TEMPMON_CONTROL) &
			TEMPMON_CONTROL_OVERTEMP) != 0);
	if (link->overtemperature_error) {
		FUNC3(link->dev->dev, "Over temperature condition\n");
		status = -1;
	}
	FUNC7(link);
	FUNC6(&link->temp_lock);
	return status;
}