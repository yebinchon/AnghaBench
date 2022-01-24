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
struct pcf50633 {int /*<<< orphan*/ * regulator_pdev; int /*<<< orphan*/  bl_pdev; int /*<<< orphan*/  adc_pdev; int /*<<< orphan*/  mbc_pdev; int /*<<< orphan*/  rtc_pdev; int /*<<< orphan*/  input_pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int PCF50633_NUM_REGULATORS ; 
 struct pcf50633* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcf50633*) ; 
 int /*<<< orphan*/  pcf_attr_group ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct pcf50633 *pcf = FUNC0(client);
	int i;

	FUNC3(&client->dev.kobj, &pcf_attr_group);
	FUNC1(pcf);

	FUNC2(pcf->input_pdev);
	FUNC2(pcf->rtc_pdev);
	FUNC2(pcf->mbc_pdev);
	FUNC2(pcf->adc_pdev);
	FUNC2(pcf->bl_pdev);

	for (i = 0; i < PCF50633_NUM_REGULATORS; i++)
		FUNC2(pcf->regulator_pdev[i]);

	return 0;
}