
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {scalar_t__ dev_state; int write_waiting_list; int write_list; int ctrl_wr_list; int dev; } ;


 scalar_t__ MEI_DEV_ENABLED ;
 int dev_dbg (int ,char*,int,int ,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ list_empty (int *) ;
 int mei_dev_state_str (scalar_t__) ;

bool mei_write_is_idle(struct mei_device *dev)
{
 bool idle = (dev->dev_state == MEI_DEV_ENABLED &&
  list_empty(&dev->ctrl_wr_list) &&
  list_empty(&dev->write_list) &&
  list_empty(&dev->write_waiting_list));

 dev_dbg(dev->dev, "write pg: is idle[%d] state=%s ctrl=%01d write=%01d wwait=%01d\n",
  idle,
  mei_dev_state_str(dev->dev_state),
  list_empty(&dev->ctrl_wr_list),
  list_empty(&dev->write_list),
  list_empty(&dev->write_waiting_list));

 return idle;
}
