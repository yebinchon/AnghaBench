
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mei_device {int ctrl_wr_list; int ctrl_rd_list; int write_waiting_list; int write_list; } ;
struct mei_cl {scalar_t__ state; TYPE_1__* me_cl; scalar_t__ timer_count; scalar_t__ tx_flow_ctrl_creds; scalar_t__ rx_flow_ctrl_creds; struct mei_device* dev; } ;
struct TYPE_2__ {scalar_t__ connect_count; scalar_t__ tx_flow_ctrl_creds; } ;


 scalar_t__ MEI_FILE_DISCONNECTED ;
 scalar_t__ MEI_FILE_INITIALIZING ;
 int WARN_ON (int) ;
 int mei_cl_wake_all (struct mei_cl*) ;
 int mei_io_list_flush_cl (int *,struct mei_cl*) ;
 int mei_io_tx_list_free_cl (int *,struct mei_cl*) ;
 int mei_me_cl_put (TYPE_1__*) ;

__attribute__((used)) static void mei_cl_set_disconnected(struct mei_cl *cl)
{
 struct mei_device *dev = cl->dev;

 if (cl->state == MEI_FILE_DISCONNECTED ||
     cl->state <= MEI_FILE_INITIALIZING)
  return;

 cl->state = MEI_FILE_DISCONNECTED;
 mei_io_tx_list_free_cl(&dev->write_list, cl);
 mei_io_tx_list_free_cl(&dev->write_waiting_list, cl);
 mei_io_list_flush_cl(&dev->ctrl_rd_list, cl);
 mei_io_list_flush_cl(&dev->ctrl_wr_list, cl);
 mei_cl_wake_all(cl);
 cl->rx_flow_ctrl_creds = 0;
 cl->tx_flow_ctrl_creds = 0;
 cl->timer_count = 0;

 if (!cl->me_cl)
  return;

 if (!WARN_ON(cl->me_cl->connect_count == 0))
  cl->me_cl->connect_count--;

 if (cl->me_cl->connect_count == 0)
  cl->me_cl->tx_flow_ctrl_creds = 0;

 mei_me_cl_put(cl->me_cl);
 cl->me_cl = ((void*)0);
}
