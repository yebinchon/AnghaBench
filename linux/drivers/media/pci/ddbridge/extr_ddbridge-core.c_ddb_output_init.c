
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ddb_regmap {scalar_t__ irq_base_odma; TYPE_1__* output; } ;
struct ddb_port {int lnr; struct ddb_output* output; struct ddb* dev; } ;
struct ddb_output {int nr; int regs; struct ddb_port* port; } ;
struct ddb {scalar_t__ has_dma; int dev; struct ddb_output* output; } ;
struct TYPE_2__ {int base; int size; } ;


 int DDB_LINK_TAG (int ) ;
 int ddb_dma_init (struct ddb_output*,int,int) ;
 int ddb_irq_set (struct ddb*,int ,scalar_t__,int *,struct ddb_output*) ;
 int dev_dbg (int ,char*,int ,int,int) ;
 struct ddb_regmap* io_regmap (struct ddb_output*,int) ;
 int output_handler ;

__attribute__((used)) static void ddb_output_init(struct ddb_port *port, int nr)
{
 struct ddb *dev = port->dev;
 struct ddb_output *output = &dev->output[nr];
 const struct ddb_regmap *rm;

 port->output = output;
 output->nr = nr;
 output->port = port;
 rm = io_regmap(output, 1);
 output->regs = DDB_LINK_TAG(port->lnr) |
  (rm->output->base + rm->output->size * nr);

 dev_dbg(dev->dev, "init link %u, output %u, regs %08x\n",
  port->lnr, nr, output->regs);

 if (dev->has_dma) {
  const struct ddb_regmap *rm0 = io_regmap(output, 0);
  u32 base = rm0->irq_base_odma;

  ddb_irq_set(dev, 0, nr + base, &output_handler, output);
  ddb_dma_init(output, nr, 1);
 }
}
