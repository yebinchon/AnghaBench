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
typedef  scalar_t__ u32 ;
struct iwl_fw_runtime {int dummy; } ;
struct iwl_fw_ini_region_cfg {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct iwl_fw_runtime*,struct iwl_fw_ini_region_cfg*,scalar_t__) ; 

__attribute__((used)) static u32 FUNC1(struct iwl_fw_runtime *fwrt,
				   struct iwl_fw_ini_region_cfg *reg)
{
	u32 num_of_fifos = 0;

	while (FUNC0(fwrt, reg, num_of_fifos))
		num_of_fifos++;

	return num_of_fifos;
}