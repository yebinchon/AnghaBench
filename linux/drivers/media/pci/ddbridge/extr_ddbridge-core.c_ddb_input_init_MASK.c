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
struct ddb_regmap {int irq_base_idma; TYPE_1__* input; } ;
struct ddb_port {int /*<<< orphan*/  lnr; struct ddb_input** input; struct ddb* dev; } ;
struct ddb_input {int nr; int regs; struct ddb_port* port; } ;
struct ddb {int /*<<< orphan*/  dev; scalar_t__ has_dma; struct ddb_input* input; } ;
struct TYPE_2__ {int base; int size; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ddb_input*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ddb*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,struct ddb_input*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  input_handler ; 
 struct ddb_regmap* FUNC4 (struct ddb_input*,int) ; 

__attribute__((used)) static void FUNC5(struct ddb_port *port, int nr, int pnr, int anr)
{
	struct ddb *dev = port->dev;
	struct ddb_input *input = &dev->input[anr];
	const struct ddb_regmap *rm;

	port->input[pnr] = input;
	input->nr = nr;
	input->port = port;
	rm = FUNC4(input, 1);
	input->regs = FUNC0(port->lnr) |
		(rm->input->base + rm->input->size * nr);
	FUNC3(dev->dev, "init link %u, input %u, regs %08x\n",
		port->lnr, nr, input->regs);

	if (dev->has_dma) {
		const struct ddb_regmap *rm0 = FUNC4(input, 0);
		u32 base = rm0->irq_base_idma;
		u32 dma_nr = nr;

		if (port->lnr)
			dma_nr += 32 + (port->lnr - 1) * 8;

		FUNC3(dev->dev, "init link %u, input %u, handler %u\n",
			port->lnr, nr, dma_nr + base);

		FUNC2(dev, 0, dma_nr + base, &input_handler, input);
		FUNC1(input, dma_nr, 0);
	}
}