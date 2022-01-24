#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct octeon_droq_info {scalar_t__ length; } ;
struct TYPE_5__ {int /*<<< orphan*/  bytes_received; } ;
struct octeon_droq {size_t read_idx; scalar_t__ refill_count; int /*<<< orphan*/  max_count; int /*<<< orphan*/  buffer_size; TYPE_2__ stats; TYPE_1__* recv_buf_list; } ;
struct octeon_device {TYPE_3__* pci_dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {scalar_t__ data; } ;

/* Variables and functions */
 scalar_t__ OCTNET_FRM_LENGTH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC1 (size_t,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline void FUNC4(struct octeon_device *oct,
					    struct octeon_droq *droq,
					    u32 cnt)
{
	u32 i = 0, buf_cnt;
	struct octeon_droq_info *info;

	for (i = 0; i < cnt; i++) {
		info = (struct octeon_droq_info *)
			droq->recv_buf_list[droq->read_idx].data;
		FUNC3((u64 *)info, 2);

		if (info->length) {
			info->length += OCTNET_FRM_LENGTH_SIZE;
			droq->stats.bytes_received += info->length;
			buf_cnt = FUNC2(droq->buffer_size,
							   (u32)info->length);
		} else {
			FUNC0(&oct->pci_dev->dev, "DROQ: In drop: pkt with len 0\n");
			buf_cnt = 1;
		}

		droq->read_idx = FUNC1(droq->read_idx, buf_cnt,
					    droq->max_count);
		droq->refill_count += buf_cnt;
	}
}