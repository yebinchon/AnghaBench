
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_hw_ops {int dummy; } ;
struct mei_device {struct device* dev; struct mei_hw_ops const* ops; int pg_event; int host_clients_map; scalar_t__ open_handle_count; int bus_rescan_work; int reset_work; int timer_work; int tx_queue_limit; int ctrl_rd_list; int ctrl_wr_list; int write_waiting_list; int write_list; scalar_t__ reset_count; int dev_state; int wait_hbm_start; int wait_pg; int wait_hw_ready; int cl_bus_lock; int me_clients_rwsem; int device_lock; int me_clients; int device_list; int file_list; } ;
struct device {int dummy; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int MEI_CLIENTS_MAX ;
 int MEI_DEV_INITIALIZING ;
 int MEI_PG_EVENT_IDLE ;
 int MEI_TX_QUEUE_LIMIT_DEFAULT ;
 int bitmap_set (int ,int ,int) ;
 int bitmap_zero (int ,int ) ;
 int init_rwsem (int *) ;
 int init_waitqueue_head (int *) ;
 int mei_cl_bus_rescan_work ;
 int mei_reset_work ;
 int mei_timer ;
 int mutex_init (int *) ;

void mei_device_init(struct mei_device *dev,
       struct device *device,
       const struct mei_hw_ops *hw_ops)
{

 INIT_LIST_HEAD(&dev->file_list);
 INIT_LIST_HEAD(&dev->device_list);
 INIT_LIST_HEAD(&dev->me_clients);
 mutex_init(&dev->device_lock);
 init_rwsem(&dev->me_clients_rwsem);
 mutex_init(&dev->cl_bus_lock);
 init_waitqueue_head(&dev->wait_hw_ready);
 init_waitqueue_head(&dev->wait_pg);
 init_waitqueue_head(&dev->wait_hbm_start);
 dev->dev_state = MEI_DEV_INITIALIZING;
 dev->reset_count = 0;

 INIT_LIST_HEAD(&dev->write_list);
 INIT_LIST_HEAD(&dev->write_waiting_list);
 INIT_LIST_HEAD(&dev->ctrl_wr_list);
 INIT_LIST_HEAD(&dev->ctrl_rd_list);
 dev->tx_queue_limit = MEI_TX_QUEUE_LIMIT_DEFAULT;

 INIT_DELAYED_WORK(&dev->timer_work, mei_timer);
 INIT_WORK(&dev->reset_work, mei_reset_work);
 INIT_WORK(&dev->bus_rescan_work, mei_cl_bus_rescan_work);

 bitmap_zero(dev->host_clients_map, MEI_CLIENTS_MAX);
 dev->open_handle_count = 0;





 bitmap_set(dev->host_clients_map, 0, 1);

 dev->pg_event = MEI_PG_EVENT_IDLE;
 dev->ops = hw_ops;
 dev->dev = device;
}
