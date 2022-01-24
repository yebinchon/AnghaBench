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
typedef  int u32 ;
struct platform_device {int dummy; } ;
struct aemif_device {unsigned long clk_rate; int cs_offset; int base; struct aemif_cs_data* cs_data; } ;
struct aemif_cs_data {int cs; int asize; int /*<<< orphan*/  enable_ss; int /*<<< orphan*/  enable_ew; void* wsetup; void* wstrobe; void* whold; void* rsetup; void* rstrobe; void* rhold; void* ta; } ;

/* Variables and functions */
 int A1CR_OFFSET ; 
 int ASIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 void* FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 
 struct aemif_device* FUNC10 (struct platform_device*) ; 
 int FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct platform_device *pdev, int csnum)
{
	struct aemif_device *aemif = FUNC10(pdev);
	struct aemif_cs_data *data = &aemif->cs_data[csnum];
	unsigned long clk_rate = aemif->clk_rate;
	u32 val, offset;

	offset = A1CR_OFFSET + (data->cs - aemif->cs_offset) * 4;
	val = FUNC11(aemif->base + offset);

	data->ta = FUNC9(FUNC5(val), clk_rate);
	data->rhold = FUNC9(FUNC1(val), clk_rate);
	data->rstrobe = FUNC9(FUNC3(val), clk_rate);
	data->rsetup = FUNC9(FUNC2(val), clk_rate);
	data->whold = FUNC9(FUNC6(val), clk_rate);
	data->wstrobe = FUNC9(FUNC8(val), clk_rate);
	data->wsetup = FUNC9(FUNC7(val), clk_rate);
	data->enable_ew = FUNC0(val);
	data->enable_ss = FUNC4(val);
	data->asize = val & ASIZE_MAX;
}