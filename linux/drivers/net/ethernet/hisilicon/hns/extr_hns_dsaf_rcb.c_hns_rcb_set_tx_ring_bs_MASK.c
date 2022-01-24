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
typedef  int /*<<< orphan*/  u32 ;
struct hnae_queue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RCB_RING_TX_RING_BD_LEN_REG ; 
 int /*<<< orphan*/  FUNC0 (struct hnae_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct hnae_queue *q, u32 buf_size)
{
	u32 bd_size_type = FUNC1(buf_size);

	FUNC0(q, RCB_RING_TX_RING_BD_LEN_REG,
		       bd_size_type);
}