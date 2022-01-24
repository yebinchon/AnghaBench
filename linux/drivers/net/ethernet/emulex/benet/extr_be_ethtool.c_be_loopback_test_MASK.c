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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
struct be_adapter {int /*<<< orphan*/  hba_port_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  BE_NO_LOOPBACK ; 
 int FUNC0 (struct be_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC1 (struct be_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u64 FUNC2(struct be_adapter *adapter, u8 loopback_type,
			    u64 *status)
{
	int ret;

	ret = FUNC1(adapter, adapter->hba_port_num,
				  loopback_type, 1);
	if (ret)
		return ret;

	*status = FUNC0(adapter, adapter->hba_port_num,
				       loopback_type, 1500, 2, 0xabc);

	ret = FUNC1(adapter, adapter->hba_port_num,
				  BE_NO_LOOPBACK, 1);
	if (ret)
		return ret;

	return *status;
}