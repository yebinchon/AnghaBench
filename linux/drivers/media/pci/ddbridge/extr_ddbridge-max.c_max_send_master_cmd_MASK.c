#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct dvb_frontend {struct ddb_input* sec_priv; } ;
struct dvb_diseqc_master_cmd {int msg_len; int /*<<< orphan*/ * msg; } ;
struct ddb_port {size_t lnr; struct ddb_dvb* dvb; struct ddb* dev; } ;
struct ddb_input {int nr; struct ddb_port* port; } ;
struct ddb_dvb {int /*<<< orphan*/  input; int /*<<< orphan*/  (* diseqc_send_master_cmd ) (struct dvb_frontend*,struct dvb_diseqc_master_cmd*) ;} ;
struct ddb {TYPE_2__* link; } ;
struct TYPE_3__ {int fmode; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {TYPE_1__ lnb; } ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LNB_CMD_DISEQC ; 
 int /*<<< orphan*/  FUNC3 (struct ddb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ddb*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct dvb_frontend*,struct dvb_diseqc_master_cmd*) ; 

__attribute__((used)) static int FUNC8(struct dvb_frontend *fe,
			       struct dvb_diseqc_master_cmd *cmd)
{
	struct ddb_input *input = fe->sec_priv;
	struct ddb_port *port = input->port;
	struct ddb *dev = port->dev;
	struct ddb_dvb *dvb = &port->dvb[input->nr & 1];
	u32 tag = FUNC0(port->lnr);
	int i;
	u32 fmode = dev->link[port->lnr].lnb.fmode;

	if (fmode == 2 || fmode == 1)
		return 0;
	if (dvb->diseqc_send_master_cmd)
		dvb->diseqc_send_master_cmd(fe, cmd);

	FUNC5(&dev->link[port->lnr].lnb.lock);
	FUNC3(dev, 0, tag | FUNC1(dvb->input));
	for (i = 0; i < cmd->msg_len; i++)
		FUNC3(dev, cmd->msg[i], tag | FUNC2(dvb->input));
	FUNC4(dev, port->lnr, dvb->input, LNB_CMD_DISEQC);
	FUNC6(&dev->link[port->lnr].lnb.lock);
	return 0;
}