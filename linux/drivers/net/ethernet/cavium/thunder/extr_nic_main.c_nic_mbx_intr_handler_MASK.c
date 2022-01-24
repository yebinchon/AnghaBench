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
typedef  unsigned long long u8 ;
typedef  unsigned long long u64 ;
struct nicpf {TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  NIC_PF_INTR_ID_MBOX0 ; 
 scalar_t__ NIC_PF_MAILBOX_INT ; 
 unsigned long long NIC_VF_PER_MBX_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC1 (struct nicpf*,unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nicpf*,unsigned long long) ; 
 unsigned long long FUNC3 (struct nicpf*,scalar_t__) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *nic_irq)
{
	struct nicpf *nic = (struct nicpf *)nic_irq;
	int mbx;
	u64 intr;
	u8  vf;

	if (irq == FUNC4(nic->pdev, NIC_PF_INTR_ID_MBOX0))
		mbx = 0;
	else
		mbx = 1;

	intr = FUNC3(nic, NIC_PF_MAILBOX_INT + (mbx << 3));
	FUNC0(&nic->pdev->dev, "PF interrupt Mbox%d 0x%llx\n", mbx, intr);
	for (vf = 0; vf < NIC_VF_PER_MBX_REG; vf++) {
		if (intr & (1ULL << vf)) {
			FUNC0(&nic->pdev->dev, "Intr from VF %d\n",
				vf + (mbx * NIC_VF_PER_MBX_REG));

			FUNC2(nic, vf +
					    (mbx * NIC_VF_PER_MBX_REG));
			FUNC1(nic, vf, mbx);
		}
	}
	return IRQ_HANDLED;
}