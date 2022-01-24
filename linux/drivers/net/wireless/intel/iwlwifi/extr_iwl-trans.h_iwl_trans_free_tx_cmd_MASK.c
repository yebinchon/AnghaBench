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
struct iwl_trans {int /*<<< orphan*/  dev_cmd_pool; } ;
struct iwl_device_cmd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct iwl_device_cmd*) ; 

__attribute__((used)) static inline void FUNC1(struct iwl_trans *trans,
					 struct iwl_device_cmd *dev_cmd)
{
	FUNC0(trans->dev_cmd_pool, dev_cmd);
}