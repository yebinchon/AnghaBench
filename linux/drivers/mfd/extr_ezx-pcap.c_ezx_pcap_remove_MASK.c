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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct pcap_chip {int irq_base; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  adc_lock; int /*<<< orphan*/ * adc_queue; } ;

/* Variables and functions */
 int PCAP_ADC_MAXQ ; 
 int PCAP_NIRQS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcap_remove_subdev ; 
 struct pcap_chip* FUNC4 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct spi_device *spi)
{
	struct pcap_chip *pcap = FUNC4(spi);
	unsigned long flags;
	int i;

	/* remove all registered subdevs */
	FUNC1(&spi->dev, NULL, pcap_remove_subdev);

	/* cleanup ADC */
	FUNC5(&pcap->adc_lock, flags);
	for (i = 0; i < PCAP_ADC_MAXQ; i++)
		FUNC3(pcap->adc_queue[i]);
	FUNC6(&pcap->adc_lock, flags);

	/* cleanup irqchip */
	for (i = pcap->irq_base; i < (pcap->irq_base + PCAP_NIRQS); i++)
		FUNC2(i, NULL, NULL);

	FUNC0(pcap->workqueue);

	return 0;
}