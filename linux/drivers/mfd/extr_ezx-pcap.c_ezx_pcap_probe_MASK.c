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
struct spi_device {int bits_per_word; int mode; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct pcap_platform_data {int config; int irq_base; int num_subdevs; int /*<<< orphan*/  (* init ) (struct pcap_chip*) ;int /*<<< orphan*/ * subdevs; } ;
struct pcap_chip {int irq_base; int msr; int /*<<< orphan*/  workqueue; struct spi_device* spi; int /*<<< orphan*/  msr_work; int /*<<< orphan*/  isr_work; int /*<<< orphan*/  adc_lock; int /*<<< orphan*/  io_lock; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQ_NOPROBE ; 
 int IRQ_NOREQUEST ; 
 int /*<<< orphan*/  IRQ_TYPE_EDGE_RISING ; 
 int PCAP_CLEAR_INTERRUPT_REGISTER ; 
 int PCAP_CS_AH ; 
 int PCAP_IRQ_ADCDONE ; 
 int PCAP_IRQ_ADCDONE2 ; 
 int PCAP_MASK_ALL_INTERRUPT ; 
 int PCAP_NIRQS ; 
 int /*<<< orphan*/  PCAP_REG_INT_SEL ; 
 int /*<<< orphan*/  PCAP_REG_ISR ; 
 int /*<<< orphan*/  PCAP_REG_MSR ; 
 int PCAP_SECOND_PORT ; 
 int SPI_CS_HIGH ; 
 int SPI_MODE_0 ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct pcap_platform_data* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pcap_chip* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct pcap_chip*) ; 
 int /*<<< orphan*/  FUNC8 (struct pcap_chip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * handle_simple_irq ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pcap_chip*) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int,struct pcap_chip*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pcap_adc_irq ; 
 int FUNC15 (struct pcap_chip*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pcap_irq_chip ; 
 int /*<<< orphan*/  pcap_irq_handler ; 
 int /*<<< orphan*/  pcap_isr_work ; 
 int /*<<< orphan*/  pcap_msr_work ; 
 int /*<<< orphan*/  pcap_remove_subdev ; 
 int FUNC16 (struct pcap_chip*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct spi_device*,struct pcap_chip*) ; 
 int FUNC18 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct pcap_chip*) ; 

__attribute__((used)) static int FUNC21(struct spi_device *spi)
{
	struct pcap_platform_data *pdata = FUNC4(&spi->dev);
	struct pcap_chip *pcap;
	int i, adc_irq;
	int ret = -ENODEV;

	/* platform data is required */
	if (!pdata)
		goto ret;

	pcap = FUNC6(&spi->dev, sizeof(*pcap), GFP_KERNEL);
	if (!pcap) {
		ret = -ENOMEM;
		goto ret;
	}

	FUNC19(&pcap->io_lock);
	FUNC19(&pcap->adc_lock);
	FUNC0(&pcap->isr_work, pcap_isr_work);
	FUNC0(&pcap->msr_work, pcap_msr_work);
	FUNC17(spi, pcap);

	/* setup spi */
	spi->bits_per_word = 32;
	spi->mode = SPI_MODE_0 | (pdata->config & PCAP_CS_AH ? SPI_CS_HIGH : 0);
	ret = FUNC18(spi);
	if (ret)
		goto ret;

	pcap->spi = spi;

	/* setup irq */
	pcap->irq_base = pdata->irq_base;
	pcap->workqueue = FUNC1("pcapd");
	if (!pcap->workqueue) {
		ret = -ENOMEM;
		FUNC3(&spi->dev, "can't create pcap thread\n");
		goto ret;
	}

	/* redirect interrupts to AP, except adcdone2 */
	if (!(pdata->config & PCAP_SECOND_PORT))
		FUNC8(pcap, PCAP_REG_INT_SEL,
					(1 << PCAP_IRQ_ADCDONE2));

	/* setup irq chip */
	for (i = pcap->irq_base; i < (pcap->irq_base + PCAP_NIRQS); i++) {
		FUNC11(i, &pcap_irq_chip, handle_simple_irq);
		FUNC12(i, pcap);
		FUNC9(i, IRQ_NOREQUEST | IRQ_NOPROBE);
	}

	/* mask/ack all PCAP interrupts */
	FUNC8(pcap, PCAP_REG_MSR, PCAP_MASK_ALL_INTERRUPT);
	FUNC8(pcap, PCAP_REG_ISR, PCAP_CLEAR_INTERRUPT_REGISTER);
	pcap->msr = PCAP_MASK_ALL_INTERRUPT;

	FUNC13(spi->irq, IRQ_TYPE_EDGE_RISING);
	FUNC10(spi->irq, pcap_irq_handler, pcap);
	FUNC14(spi->irq, 1);

	/* ADC */
	adc_irq = FUNC16(pcap, (pdata->config & PCAP_SECOND_PORT) ?
					PCAP_IRQ_ADCDONE2 : PCAP_IRQ_ADCDONE);

	ret = FUNC7(&spi->dev, adc_irq, pcap_adc_irq, 0, "ADC",
				pcap);
	if (ret)
		goto free_irqchip;

	/* setup subdevs */
	for (i = 0; i < pdata->num_subdevs; i++) {
		ret = FUNC15(pcap, &pdata->subdevs[i]);
		if (ret)
			goto remove_subdevs;
	}

	/* board specific quirks */
	if (pdata->init)
		pdata->init(pcap);

	return 0;

remove_subdevs:
	FUNC5(&spi->dev, NULL, pcap_remove_subdev);
free_irqchip:
	for (i = pcap->irq_base; i < (pcap->irq_base + PCAP_NIRQS); i++)
		FUNC11(i, NULL, NULL);
/* destroy_workqueue: */
	FUNC2(pcap->workqueue);
ret:
	return ret;
}