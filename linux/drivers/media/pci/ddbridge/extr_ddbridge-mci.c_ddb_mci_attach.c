
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mci_cfg {int (* set_input ) (struct dvb_frontend*,int) ;int (* init ) (struct mci_base*) ;int fe_ops; int (* base_init ) (struct mci_base*) ;int base_size; int state_size; scalar_t__ type; } ;
struct dvb_frontend {struct mci_base* demodulator_priv; int ops; } ;
struct mci_base {int count; int nr; int tuner; int demod; struct dvb_frontend fe; int mci_list; struct mci_base* base; int completion; int tuner_lock; int mci_lock; int dev; struct ddb_link* link; void* key; } ;
struct mci {int count; int nr; int tuner; int demod; struct dvb_frontend fe; int mci_list; struct mci* base; int completion; int tuner_lock; int mci_lock; int dev; struct ddb_link* link; void* key; } ;
struct dvb_frontend_ops {int dummy; } ;
struct ddb_port {size_t lnr; struct ddb* dev; } ;
struct ddb_link {int nr; } ;
struct ddb_input {struct ddb_port* port; } ;
struct ddb {int dev; struct ddb_link* link; } ;


 int GFP_KERNEL ;
 int ddb_irq_set (struct ddb*,int ,int ,int ,struct mci_base*) ;
 int init_completion (int *) ;
 int kfree (struct mci_base*) ;
 struct mci_base* kzalloc (int ,int ) ;
 int list_add (int *,int *) ;
 struct mci_base* match_base (void*) ;
 int mci_handler ;
 int mci_list ;
 int memcpy (int *,int ,int) ;
 int mutex_init (int *) ;
 scalar_t__ probe (struct mci_base*) ;
 int stub1 (struct mci_base*) ;
 int stub2 (struct mci_base*) ;

struct dvb_frontend
*ddb_mci_attach(struct ddb_input *input, struct mci_cfg *cfg, int nr,
  int (**fn_set_input)(struct dvb_frontend *fe, int input))
{
 struct ddb_port *port = input->port;
 struct ddb *dev = port->dev;
 struct ddb_link *link = &dev->link[port->lnr];
 struct mci_base *base;
 struct mci *state;
 void *key = cfg->type ? (void *)port : (void *)link;

 state = kzalloc(cfg->state_size, GFP_KERNEL);
 if (!state)
  return ((void*)0);

 base = match_base(key);
 if (base) {
  base->count++;
  state->base = base;
 } else {
  base = kzalloc(cfg->base_size, GFP_KERNEL);
  if (!base)
   goto fail;
  base->key = key;
  base->count = 1;
  base->link = link;
  base->dev = dev->dev;
  mutex_init(&base->mci_lock);
  mutex_init(&base->tuner_lock);
  ddb_irq_set(dev, link->nr, 0, mci_handler, base);
  init_completion(&base->completion);
  state->base = base;
  if (probe(state) < 0) {
   kfree(base);
   goto fail;
  }
  list_add(&base->mci_list, &mci_list);
  if (cfg->base_init)
   cfg->base_init(base);
 }
 memcpy(&state->fe.ops, cfg->fe_ops, sizeof(struct dvb_frontend_ops));
 state->fe.demodulator_priv = state;
 state->nr = nr;
 *fn_set_input = cfg->set_input;
 state->tuner = nr;
 state->demod = nr;
 if (cfg->init)
  cfg->init(state);
 return &state->fe;
fail:
 kfree(state);
 return ((void*)0);
}
