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
typedef  int u64 ;
struct rbdr {int head; int tail; } ;
struct nicvf {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int NICVF_RBDR_RESET ; 
 int /*<<< orphan*/  NIC_QSET_RBDR_0_1_CFG ; 
 int /*<<< orphan*/  NIC_QSET_RBDR_0_1_HEAD ; 
 int /*<<< orphan*/  NIC_QSET_RBDR_0_1_PREFETCH_STATUS ; 
 int /*<<< orphan*/  NIC_QSET_RBDR_0_1_STATUS0 ; 
 int /*<<< orphan*/  NIC_QSET_RBDR_0_1_TAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct nicvf*,int,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC2 (struct nicvf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nicvf*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(struct nicvf *nic,
			       struct rbdr *rbdr, int qidx)
{
	u64 tmp, fifo_state;
	int timeout = 10;

	/* Save head and tail pointers for feeing up buffers */
	rbdr->head = FUNC2(nic,
					  NIC_QSET_RBDR_0_1_HEAD,
					  qidx) >> 3;
	rbdr->tail = FUNC2(nic,
					  NIC_QSET_RBDR_0_1_TAIL,
					  qidx) >> 3;

	/* If RBDR FIFO is in 'FAIL' state then do a reset first
	 * before relaiming.
	 */
	fifo_state = FUNC2(nic, NIC_QSET_RBDR_0_1_STATUS0, qidx);
	if (((fifo_state >> 62) & 0x03) == 0x3)
		FUNC3(nic, NIC_QSET_RBDR_0_1_CFG,
				      qidx, NICVF_RBDR_RESET);

	/* Disable RBDR */
	FUNC3(nic, NIC_QSET_RBDR_0_1_CFG, qidx, 0);
	if (FUNC1(nic, qidx, NIC_QSET_RBDR_0_1_STATUS0, 62, 2, 0x00))
		return;
	while (1) {
		tmp = FUNC2(nic,
					   NIC_QSET_RBDR_0_1_PREFETCH_STATUS,
					   qidx);
		if ((tmp & 0xFFFFFFFF) == ((tmp >> 32) & 0xFFFFFFFF))
			break;
		FUNC4(1000, 2000);
		timeout--;
		if (!timeout) {
			FUNC0(nic->netdev,
				   "Failed polling on prefetch status\n");
			return;
		}
	}
	FUNC3(nic, NIC_QSET_RBDR_0_1_CFG,
			      qidx, NICVF_RBDR_RESET);

	if (FUNC1(nic, qidx, NIC_QSET_RBDR_0_1_STATUS0, 62, 2, 0x02))
		return;
	FUNC3(nic, NIC_QSET_RBDR_0_1_CFG, qidx, 0x00);
	if (FUNC1(nic, qidx, NIC_QSET_RBDR_0_1_STATUS0, 62, 2, 0x00))
		return;
}