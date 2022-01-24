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
typedef  scalar_t__ u32 ;
struct ddb_regmap {scalar_t__ irq_base_odma; TYPE_1__* output; } ;
struct ddb_port {int /*<<< orphan*/  lnr; struct ddb_output* output; struct ddb* dev; } ;
struct ddb_output {int nr; int regs; struct ddb_port* port; } ;
struct ddb {scalar_t__ has_dma; int /*<<< orphan*/  dev; struct ddb_output* output; } ;
struct TYPE_2__ {int base; int size; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ddb_output*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ddb*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,struct ddb_output*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 struct ddb_regmap* FUNC4 (struct ddb_output*,int) ; 
 int /*<<< orphan*/  output_handler ; 

__attribute__((used)) static void FUNC5(struct ddb_port *port, int nr)
{
	struct ddb *dev = port->dev;
	struct ddb_output *output = &dev->output[nr];
	const struct ddb_regmap *rm;

	port->output = output;
	output->nr = nr;
	output->port = port;
	rm = FUNC4(output, 1);
	output->regs = FUNC0(port->lnr) |
		(rm->output->base + rm->output->size * nr);

	FUNC3(dev->dev, "init link %u, output %u, regs %08x\n",
		port->lnr, nr, output->regs);

	if (dev->has_dma) {
		const struct ddb_regmap *rm0 = FUNC4(output, 0);
		u32 base = rm0->irq_base_odma;

		FUNC2(dev, 0, nr + base, &output_handler, output);
		FUNC1(output, nr, 1);
	}
}