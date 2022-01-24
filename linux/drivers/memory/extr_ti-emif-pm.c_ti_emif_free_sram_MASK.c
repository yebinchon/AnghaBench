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
struct ti_emif_data {int /*<<< orphan*/  ti_emif_sram_data_virt; int /*<<< orphan*/  sram_pool_data; int /*<<< orphan*/  ti_emif_sram_virt; int /*<<< orphan*/  sram_pool_code; } ;
struct emif_regs_amx3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int ti_emif_sram_sz ; 

__attribute__((used)) static void FUNC1(struct ti_emif_data *emif_data)
{
	FUNC0(emif_data->sram_pool_code, emif_data->ti_emif_sram_virt,
		      ti_emif_sram_sz);
	FUNC0(emif_data->sram_pool_data,
		      emif_data->ti_emif_sram_data_virt,
		      sizeof(struct emif_regs_amx3));
}