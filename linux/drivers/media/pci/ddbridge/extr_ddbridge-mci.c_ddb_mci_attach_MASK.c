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
struct mci_cfg {int (* set_input ) (struct dvb_frontend*,int) ;int /*<<< orphan*/  (* init ) (struct mci_base*) ;int /*<<< orphan*/  fe_ops; int /*<<< orphan*/  (* base_init ) (struct mci_base*) ;int /*<<< orphan*/  base_size; int /*<<< orphan*/  state_size; scalar_t__ type; } ;
struct dvb_frontend {struct mci_base* demodulator_priv; int /*<<< orphan*/  ops; } ;
struct mci_base {int count; int nr; int tuner; int demod; struct dvb_frontend fe; int /*<<< orphan*/  mci_list; struct mci_base* base; int /*<<< orphan*/  completion; int /*<<< orphan*/  tuner_lock; int /*<<< orphan*/  mci_lock; int /*<<< orphan*/  dev; struct ddb_link* link; void* key; } ;
struct mci {int count; int nr; int tuner; int demod; struct dvb_frontend fe; int /*<<< orphan*/  mci_list; struct mci* base; int /*<<< orphan*/  completion; int /*<<< orphan*/  tuner_lock; int /*<<< orphan*/  mci_lock; int /*<<< orphan*/  dev; struct ddb_link* link; void* key; } ;
struct dvb_frontend_ops {int dummy; } ;
struct ddb_port {size_t lnr; struct ddb* dev; } ;
struct ddb_link {int /*<<< orphan*/  nr; } ;
struct ddb_input {struct ddb_port* port; } ;
struct ddb {int /*<<< orphan*/  dev; struct ddb_link* link; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct ddb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mci_base*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mci_base*) ; 
 struct mci_base* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mci_base* FUNC5 (void*) ; 
 int /*<<< orphan*/  mci_handler ; 
 int /*<<< orphan*/  mci_list ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct mci_base*) ; 
 int /*<<< orphan*/  FUNC9 (struct mci_base*) ; 
 int /*<<< orphan*/  FUNC10 (struct mci_base*) ; 

struct dvb_frontend
*FUNC11(struct ddb_input *input, struct mci_cfg *cfg, int nr,
		int (**fn_set_input)(struct dvb_frontend *fe, int input))
{
	struct ddb_port *port = input->port;
	struct ddb *dev = port->dev;
	struct ddb_link *link = &dev->link[port->lnr];
	struct mci_base *base;
	struct mci *state;
	void *key = cfg->type ? (void *)port : (void *)link;

	state = FUNC3(cfg->state_size, GFP_KERNEL);
	if (!state)
		return NULL;

	base = FUNC5(key);
	if (base) {
		base->count++;
		state->base = base;
	} else {
		base = FUNC3(cfg->base_size, GFP_KERNEL);
		if (!base)
			goto fail;
		base->key = key;
		base->count = 1;
		base->link = link;
		base->dev = dev->dev;
		FUNC7(&base->mci_lock);
		FUNC7(&base->tuner_lock);
		FUNC0(dev, link->nr, 0, mci_handler, base);
		FUNC1(&base->completion);
		state->base = base;
		if (FUNC8(state) < 0) {
			FUNC2(base);
			goto fail;
		}
		FUNC4(&base->mci_list, &mci_list);
		if (cfg->base_init)
			cfg->base_init(base);
	}
	FUNC6(&state->fe.ops, cfg->fe_ops, sizeof(struct dvb_frontend_ops));
	state->fe.demodulator_priv = state;
	state->nr = nr;
	*fn_set_input = cfg->set_input;
	state->tuner = nr;
	state->demod = nr;
	if (cfg->init)
		cfg->init(state);
	return &state->fe;
fail:
	FUNC2(state);
	return NULL;
}