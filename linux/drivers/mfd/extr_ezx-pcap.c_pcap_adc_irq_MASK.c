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
typedef  int u32 ;
typedef  int u16 ;
struct pcap_chip {size_t adc_head; int /*<<< orphan*/  adc_lock; struct pcap_adc_request** adc_queue; } ;
struct pcap_adc_request {int* ch; int /*<<< orphan*/  data; int /*<<< orphan*/  (* callback ) (int /*<<< orphan*/ ,int*) ;} ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int PCAP_ADC_ADA1_MASK ; 
 int PCAP_ADC_ADA1_SHIFT ; 
 int PCAP_ADC_ADA2_MASK ; 
 int PCAP_ADC_ADA2_SHIFT ; 
 int PCAP_ADC_MAXQ ; 
 int PCAP_ADR_ADD1_MASK ; 
 int PCAP_ADR_ADD1_SHIFT ; 
 int PCAP_ADR_ADD2_MASK ; 
 int PCAP_ADR_ADD2_SHIFT ; 
 int /*<<< orphan*/  PCAP_REG_ADC ; 
 int /*<<< orphan*/  PCAP_REG_ADR ; 
 scalar_t__ FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcap_chip*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcap_chip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pcap_adc_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct pcap_chip*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *_pcap)
{
	struct pcap_chip *pcap = _pcap;
	struct pcap_adc_request *req;
	u16 res[2];
	u32 tmp;

	FUNC5(&pcap->adc_lock);
	req = pcap->adc_queue[pcap->adc_head];

	if (FUNC0(!req, "adc irq without pending request\n")) {
		FUNC6(&pcap->adc_lock);
		return IRQ_HANDLED;
	}

	/* read requested channels results */
	FUNC1(pcap, PCAP_REG_ADC, &tmp);
	tmp &= ~(PCAP_ADC_ADA1_MASK | PCAP_ADC_ADA2_MASK);
	tmp |= (req->ch[0] << PCAP_ADC_ADA1_SHIFT);
	tmp |= (req->ch[1] << PCAP_ADC_ADA2_SHIFT);
	FUNC2(pcap, PCAP_REG_ADC, tmp);
	FUNC1(pcap, PCAP_REG_ADR, &tmp);
	res[0] = (tmp & PCAP_ADR_ADD1_MASK) >> PCAP_ADR_ADD1_SHIFT;
	res[1] = (tmp & PCAP_ADR_ADD2_MASK) >> PCAP_ADR_ADD2_SHIFT;

	pcap->adc_queue[pcap->adc_head] = NULL;
	pcap->adc_head = (pcap->adc_head + 1) & (PCAP_ADC_MAXQ - 1);
	FUNC6(&pcap->adc_lock);

	/* pass the results and release memory */
	req->callback(req->data, res);
	FUNC3(req);

	/* trigger next conversion (if any) on queue */
	FUNC4(pcap);

	return IRQ_HANDLED;
}