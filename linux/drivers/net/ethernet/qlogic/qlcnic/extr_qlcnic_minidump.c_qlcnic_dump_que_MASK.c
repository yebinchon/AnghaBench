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
typedef  int u32 ;
struct __queue {int read_addr; int read_addr_cnt; int no_ops; scalar_t__ stride; scalar_t__ read_addr_stride; int /*<<< orphan*/  sel_addr; } ;
struct TYPE_2__ {struct __queue que; } ;
struct qlcnic_dump_entry {TYPE_1__ region; } ;
struct qlcnic_adapter {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct qlcnic_adapter*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u32 FUNC3(struct qlcnic_adapter *adapter,
			   struct qlcnic_dump_entry *entry, __le32 *buffer)
{
	int i, loop;
	u32 cnt, addr, data, que_id = 0;
	struct __queue *que = &entry->region.que;

	addr = que->read_addr;
	cnt = que->read_addr_cnt;

	for (loop = 0; loop < que->no_ops; loop++) {
		FUNC2(adapter, que->sel_addr, que_id);
		addr = que->read_addr;
		for (i = 0; i < cnt; i++) {
			data = FUNC1(adapter, addr);
			*buffer++ = FUNC0(data);
			addr += que->read_addr_stride;
		}
		que_id += que->stride;
	}
	return que->no_ops * cnt * sizeof(u32);
}