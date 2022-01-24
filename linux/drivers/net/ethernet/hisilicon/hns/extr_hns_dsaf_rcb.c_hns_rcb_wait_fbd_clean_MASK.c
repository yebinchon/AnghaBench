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
struct hnae_queue {TYPE_1__* handle; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner_dev; } ;

/* Variables and functions */
 int RCB_INT_FLAG_RX ; 
 int RCB_INT_FLAG_TX ; 
 int /*<<< orphan*/  RCB_RING_RX_RING_FBDNUM_REG ; 
 int /*<<< orphan*/  RCB_RING_TX_RING_FBDNUM_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC1 (struct hnae_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

void FUNC3(struct hnae_queue **qs, int q_num, u32 flag)
{
	int i, wait_cnt;
	u32 fbd_num;

	for (wait_cnt = i = 0; i < q_num; wait_cnt++) {
		FUNC2(200, 300);
		fbd_num = 0;
		if (flag & RCB_INT_FLAG_TX)
			fbd_num += FUNC1(qs[i],
						 RCB_RING_TX_RING_FBDNUM_REG);
		if (flag & RCB_INT_FLAG_RX)
			fbd_num += FUNC1(qs[i],
						 RCB_RING_RX_RING_FBDNUM_REG);
		if (!fbd_num)
			i++;
		if (wait_cnt >= 10000)
			break;
	}

	if (i < q_num)
		FUNC0(qs[i]->handle->owner_dev,
			"queue(%d) wait fbd(%d) clean fail!!\n", i, fbd_num);
}