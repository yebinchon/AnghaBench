
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct dvb_frontend {struct ddb_input* sec_priv; } ;
struct dvb_diseqc_master_cmd {int msg_len; int * msg; } ;
struct ddb_port {size_t lnr; struct ddb_dvb* dvb; struct ddb* dev; } ;
struct ddb_input {int nr; struct ddb_port* port; } ;
struct ddb_dvb {int input; int (* diseqc_send_master_cmd ) (struct dvb_frontend*,struct dvb_diseqc_master_cmd*) ;} ;
struct ddb {TYPE_2__* link; } ;
struct TYPE_3__ {int fmode; int lock; } ;
struct TYPE_4__ {TYPE_1__ lnb; } ;


 int DDB_LINK_TAG (size_t) ;
 int LNB_BUF_LEVEL (int ) ;
 int LNB_BUF_WRITE (int ) ;
 int LNB_CMD_DISEQC ;
 int ddbwritel (struct ddb*,int ,int) ;
 int lnb_command (struct ddb*,size_t,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct dvb_frontend*,struct dvb_diseqc_master_cmd*) ;

__attribute__((used)) static int max_send_master_cmd(struct dvb_frontend *fe,
          struct dvb_diseqc_master_cmd *cmd)
{
 struct ddb_input *input = fe->sec_priv;
 struct ddb_port *port = input->port;
 struct ddb *dev = port->dev;
 struct ddb_dvb *dvb = &port->dvb[input->nr & 1];
 u32 tag = DDB_LINK_TAG(port->lnr);
 int i;
 u32 fmode = dev->link[port->lnr].lnb.fmode;

 if (fmode == 2 || fmode == 1)
  return 0;
 if (dvb->diseqc_send_master_cmd)
  dvb->diseqc_send_master_cmd(fe, cmd);

 mutex_lock(&dev->link[port->lnr].lnb.lock);
 ddbwritel(dev, 0, tag | LNB_BUF_LEVEL(dvb->input));
 for (i = 0; i < cmd->msg_len; i++)
  ddbwritel(dev, cmd->msg[i], tag | LNB_BUF_WRITE(dvb->input));
 lnb_command(dev, port->lnr, dvb->input, LNB_CMD_DISEQC);
 mutex_unlock(&dev->link[port->lnr].lnb.lock);
 return 0;
}
