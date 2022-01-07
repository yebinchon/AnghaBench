
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct ena_adapter {int num_queues; int ena_dev; TYPE_2__* ena_napi; } ;
struct TYPE_3__ {int work; } ;
struct TYPE_4__ {TYPE_1__ dim; } ;


 int ENA_IO_RXQ_IDX (int) ;
 int cancel_work_sync (int *) ;
 int ena_com_destroy_io_queue (int ,int ) ;

__attribute__((used)) static void ena_destroy_all_rx_queues(struct ena_adapter *adapter)
{
 u16 ena_qid;
 int i;

 for (i = 0; i < adapter->num_queues; i++) {
  ena_qid = ENA_IO_RXQ_IDX(i);
  cancel_work_sync(&adapter->ena_napi[i].dim.work);
  ena_com_destroy_io_queue(adapter->ena_dev, ena_qid);
 }
}
