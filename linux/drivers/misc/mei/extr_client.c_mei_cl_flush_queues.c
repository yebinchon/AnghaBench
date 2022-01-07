
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int ctrl_rd_list; int ctrl_wr_list; int write_waiting_list; int write_list; } ;
struct mei_cl {int rd_completed; int rd_pending; struct mei_device* dev; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int cl_dbg (struct mei_device*,struct mei_cl*,char*) ;
 int mei_io_list_flush_cl (int *,struct mei_cl*) ;
 int mei_io_list_free_fp (int *,struct file const*) ;
 int mei_io_tx_list_free_cl (int *,struct mei_cl*) ;

int mei_cl_flush_queues(struct mei_cl *cl, const struct file *fp)
{
 struct mei_device *dev;

 if (WARN_ON(!cl || !cl->dev))
  return -EINVAL;

 dev = cl->dev;

 cl_dbg(dev, cl, "remove list entry belonging to cl\n");
 mei_io_tx_list_free_cl(&cl->dev->write_list, cl);
 mei_io_tx_list_free_cl(&cl->dev->write_waiting_list, cl);
 mei_io_list_flush_cl(&cl->dev->ctrl_wr_list, cl);
 mei_io_list_flush_cl(&cl->dev->ctrl_rd_list, cl);
 mei_io_list_free_fp(&cl->rd_pending, fp);
 mei_io_list_free_fp(&cl->rd_completed, fp);

 return 0;
}
