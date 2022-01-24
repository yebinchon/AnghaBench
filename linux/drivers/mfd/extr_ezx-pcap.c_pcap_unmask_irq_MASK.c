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
struct pcap_chip {int msr; int /*<<< orphan*/  msr_work; int /*<<< orphan*/  workqueue; } ;
struct irq_data {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 struct pcap_chip* FUNC0 (struct irq_data*) ; 
 int FUNC1 (struct pcap_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct irq_data *d)
{
	struct pcap_chip *pcap = FUNC0(d);

	pcap->msr &= ~(1 << FUNC1(pcap, d->irq));
	FUNC2(pcap->workqueue, &pcap->msr_work);
}