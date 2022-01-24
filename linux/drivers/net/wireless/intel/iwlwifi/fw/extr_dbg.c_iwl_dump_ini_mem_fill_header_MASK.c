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
struct iwl_fw_runtime {int dummy; } ;
struct iwl_fw_ini_region_cfg {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  version; } ;
struct iwl_fw_ini_error_dump {void* ranges; TYPE_1__ header; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWL_INI_DUMP_VER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC1(struct iwl_fw_runtime *fwrt,
					  struct iwl_fw_ini_region_cfg *reg,
					  void *data)
{
	struct iwl_fw_ini_error_dump *dump = data;

	dump->header.version = FUNC0(IWL_INI_DUMP_VER);

	return dump->ranges;
}