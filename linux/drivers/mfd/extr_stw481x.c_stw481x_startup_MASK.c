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
struct stw481x {TYPE_1__* client; int /*<<< orphan*/  map; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  STW_CONF1 ; 
 unsigned int STW_CONF1_IT_WARN ; 
 unsigned int STW_CONF1_MMC_LS_STATUS ; 
 unsigned int STW_CONF1_PDN_VAUX ; 
 unsigned int STW_CONF1_PDN_VMMC ; 
 unsigned int STW_CONF1_V_MONITORING ; 
 int /*<<< orphan*/  STW_CONF2 ; 
 unsigned int STW_CONF2_GPO1 ; 
 unsigned int STW_CONF2_GPO2 ; 
 unsigned int STW_CONF2_MASK_IT_WAKE_UP ; 
 unsigned int STW_CONF2_MASK_TWARN ; 
 unsigned int STW_CONF2_VMMC_EXT ; 
 int /*<<< orphan*/  STW_PC_VAUX_SEL ; 
 int /*<<< orphan*/  STW_PC_VCORE_SEL ; 
 int /*<<< orphan*/  STW_PC_VPLL_SEL ; 
 int /*<<< orphan*/  STW_VCORE_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC2 (struct stw481x*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct stw481x *stw481x)
{
	/* Voltages multiplied by 100 */
	static const u8 vcore_val[] = {
		100, 105, 110, 115, 120, 122, 124, 126, 128,
		130, 132, 134, 136, 138, 140, 145
	};
	static const u8 vpll_val[] = { 105, 120, 130, 180 };
	static const u8 vaux_val[] = { 15, 18, 25, 28 };
	u8 vcore;
	u8 vcore_slp;
	u8 vpll;
	u8 vaux;
	bool vaux_en;
	bool it_warn;
	int ret;
	unsigned int val;

	ret = FUNC1(stw481x->map, STW_CONF1, &val);
	if (ret)
		return ret;
	vaux_en = !!(val & STW_CONF1_PDN_VAUX);
	it_warn = !!(val & STW_CONF1_IT_WARN);

	FUNC0(&stw481x->client->dev, "voltages %s\n",
		(val & STW_CONF1_V_MONITORING) ? "OK" : "LOW");
	FUNC0(&stw481x->client->dev, "MMC level shifter %s\n",
		(val & STW_CONF1_MMC_LS_STATUS) ? "high impedance" : "ON");
	FUNC0(&stw481x->client->dev, "VMMC: %s\n",
		(val & STW_CONF1_PDN_VMMC) ? "ON" : "disabled");

	FUNC0(&stw481x->client->dev, "STw481x power control registers:\n");

	ret = FUNC2(stw481x, STW_PC_VCORE_SEL);
	if (ret < 0)
		return ret;
	vcore = ret & 0x0f;

	ret = FUNC2(stw481x, STW_PC_VAUX_SEL);
	if (ret < 0)
		return ret;
	vaux = (ret >> 2) & 3;
	vpll = (ret >> 4) & 1; /* Save bit 4 */

	ret = FUNC2(stw481x, STW_PC_VPLL_SEL);
	if (ret < 0)
		return ret;
	vpll |= (ret >> 1) & 2;

	FUNC0(&stw481x->client->dev, "VCORE: %u.%uV %s\n",
		vcore_val[vcore] / 100, vcore_val[vcore] % 100,
		(ret & 4) ? "ON" : "OFF");

	FUNC0(&stw481x->client->dev, "VPLL:  %u.%uV %s\n",
		vpll_val[vpll] / 100, vpll_val[vpll] % 100,
		(ret & 0x10) ? "ON" : "OFF");

	FUNC0(&stw481x->client->dev, "VAUX:  %u.%uV %s\n",
		vaux_val[vaux] / 10, vaux_val[vaux] % 10,
		vaux_en ? "ON" : "OFF");

	ret = FUNC1(stw481x->map, STW_CONF2, &val);
	if (ret)
		return ret;

	FUNC0(&stw481x->client->dev, "TWARN: %s threshold, %s\n",
		it_warn ? "below" : "above",
		(val & STW_CONF2_MASK_TWARN) ?
		 "enabled" : "mask through VDDOK");
	FUNC0(&stw481x->client->dev, "VMMC: %s\n",
		(val & STW_CONF2_VMMC_EXT) ? "internal" : "external");
	FUNC0(&stw481x->client->dev, "IT WAKE UP: %s\n",
		(val & STW_CONF2_MASK_IT_WAKE_UP) ? "enabled" : "masked");
	FUNC0(&stw481x->client->dev, "GPO1: %s\n",
		(val & STW_CONF2_GPO1) ? "low" : "high impedance");
	FUNC0(&stw481x->client->dev, "GPO2: %s\n",
		(val & STW_CONF2_GPO2) ? "low" : "high impedance");

	ret = FUNC1(stw481x->map, STW_VCORE_SLEEP, &val);
	if (ret)
		return ret;
	vcore_slp = val & 0x0f;
	FUNC0(&stw481x->client->dev, "VCORE SLEEP: %u.%uV\n",
		vcore_val[vcore_slp] / 100, vcore_val[vcore_slp] % 100);

	return 0;
}