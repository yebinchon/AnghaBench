
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qed_dev {int dummy; } ;


 int qed_set_queue_coalesce (int ,int ,void*) ;

__attribute__((used)) static int qed_set_coalesce(struct qed_dev *cdev, u16 rx_coal, u16 tx_coal,
       void *handle)
{
  return qed_set_queue_coalesce(rx_coal, tx_coal, handle);
}
