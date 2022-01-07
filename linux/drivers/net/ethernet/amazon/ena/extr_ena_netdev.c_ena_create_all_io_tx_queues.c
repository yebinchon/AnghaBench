
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_com_dev {int dummy; } ;
struct ena_adapter {int num_queues; struct ena_com_dev* ena_dev; } ;


 int ENA_IO_TXQ_IDX (int) ;
 int ena_com_destroy_io_queue (struct ena_com_dev*,int ) ;
 int ena_create_io_tx_queue (struct ena_adapter*,int) ;

__attribute__((used)) static int ena_create_all_io_tx_queues(struct ena_adapter *adapter)
{
 struct ena_com_dev *ena_dev = adapter->ena_dev;
 int rc, i;

 for (i = 0; i < adapter->num_queues; i++) {
  rc = ena_create_io_tx_queue(adapter, i);
  if (rc)
   goto create_err;
 }

 return 0;

create_err:
 while (i--)
  ena_com_destroy_io_queue(ena_dev, ENA_IO_TXQ_IDX(i));

 return rc;
}
